require 'rails_helper'

module Mutations
  module Users
    RSpec.describe CreateUser, type: :request do
      describe '.resolve' do
        it 'creates a user' do
          expect(User.count).to eq(0)
          post '/graphql', params: {query: query}
          expect(User.count).to eq(1)
        end

        it 'returns a user' do
          post '/graphql', params: { query: query }
          json = JSON.parse(response.body)
          data = json['data']['createUser']
          expect(data['user']['name']).to eq('Mom')
          expect(data['user']['email']).to eq("mom@gmail.com")
          expect(data['user']['phoneFormatter']).to eq("(720) 453-9810")
          expect(data['user']['bio']).to eq("I am mom")
          expect(data['user']['location']).to eq("denver,co")
          expect(data['user']['donorStatus']).to eq(0)
        end

        it 'returns skills for a user' do
          post '/graphql', params: { query: query }
          user = User.last
        end
      end

      def query
        <<~GQL
        mutation{
          createUser(input: {
            name: "Mom",
            email: "mom@gmail.com",
            phone: "7204539810",
            bio: "I am mom",
            location: "denver,co",
            donorStatus: 0
            }) {
              user {
                id
                name
                email
                bio
                phoneFormatter
                location
                donorStatus
              }
            }
          }
        GQL
      end
    end
  end
end
