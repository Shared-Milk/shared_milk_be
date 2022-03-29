require 'rails_helper'

module Queries
  module Users
    RSpec.describe Types::QueryType do
      describe '.resolve' do
        it 'returns all users' do
          mom1 = User.create!(name: "Mom", email: "mom@gmail.com", phone: "7204539810", bio: "I am mom", location: "denver,co", donor_status: 0)
          mom2 = User.create!(name: "Mom2", email: "mom2@gmail.com", phone: "7204539810", bio: "I am mom", location: "pueblo,co", donor_status: 1)
          mom3 = User.create!(name: "Mom3", email: "mom3@gmail.com", phone: "7204539810", bio: "I am mom", location: "denver,co", donor_status: 0)

          result = SharedMilkSchema.execute(query).as_json
          expect(result["data"]["users"].count).to eq(3)
          expect(result["data"]["users"].first["name"]).to eq("Mom")

          users = User.all
          expect(result["data"]["users"].first).to have_key("name")
          expect(result["data"]["users"].first["name"]).to eq("Mom")
          expect(result["data"]["users"].first).to have_key("email")
          expect(result["data"]["users"].first["email"]).to eq("mom@gmail.com")
          expect(result["data"]["users"].first).to have_key("phoneFormatter")
          expect(result["data"]["users"].first["phoneFormatter"]).to eq("(720) 453-9810")
        end

        def query
          <<~GQL
          {
            users {
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
