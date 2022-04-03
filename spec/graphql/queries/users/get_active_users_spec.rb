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
        end

        def query
          <<~GQL
          {
            activeUsers {
              name
              id
              email
              phoneFormatter
            }
          }
          GQL
        end
      end
    end
  end
end
