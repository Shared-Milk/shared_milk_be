require 'rails_helper'

module Queries
  module Users
    RSpec.describe Types::QueryType do
      describe '.resolve' do
        it 'returns all active users' do
          mom1 = User.create!(name: "Mom", email: "mom@gmail.com", phone: "7204539810", bio: "I am mom", location: "denver,co", donor_status: 0)
          mom2 = User.create!(name: "Mom2", email: "mom2@gmail.com", phone: "7204539810", bio: "I am mom", location: "pueblo,co", donor_status: 0)
          mom3 = User.create!(name: "Mom3", email: "mom3@gmail.com", phone: "7204539810", bio: "I am mom", location: "denver,co", donor_status: 0)
          mom1.requests.create!(requested_at: 2.week.ago)
          mom1.requests.create!(requested_at: 2.days.ago)

          mom2.requests.create!(requested_at: 4.week.ago)
          mom2.requests.create!(requested_at: 3.week.ago)

          mom3.requests.create!(requested_at: 5.week.ago)
          mom3.requests.create!(requested_at: 4.week.ago)

          result = SharedMilkSchema.execute(query).as_json

          expect(result["data"]["activeUsers"].count).to eq(2)
          expect(result["data"]["activeUsers"]).not_to include(mom3)
          user_data = result["data"]["activeUsers"]

          user_data.each do |donor|
            expect(donor).to have_key("name")
            expect(donor["name"]).to be_a(String)
            expect(donor).to have_key("id")
            expect(donor["id"]).to be_a(String)
            expect(donor).to have_key("email")
            expect(donor["email"]).to be_a(String)
            expect(donor).to have_key("phoneFormatter")
            expect(donor["phoneFormatter"]).to be_a(String)
            expect(donor).to have_key("bio")
            expect(donor["bio"]).to be_a(String)
            expect(donor).to have_key("location")
            expect(donor["location"]).to be_a(String)
          end 
        end

        def query
          <<~GQL
          {
            activeUsers {
              name
              id
              email
              phoneFormatter
              bio
              location
            }
          }
          GQL
        end
      end
    end
  end
end
