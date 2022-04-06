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

          expect(data['user']['name']).to eq('Blair Smith')
          expect(data['user']['id']).to be_a(String)
          expect(data['user']['email']).to eq("bsmith91@faker.net")
          expect(data['user']['phoneFormatter']).to eq("(720) 395-0987")
          expect(data['user']['location']).to eq("littleton,co")
          expect(data['user']['bio']).to eq("Blessed with an abundance of milk, would love to connect with someone in need!")
        end
      end

      def query
        <<~GQL
        mutation {
          createUser(input: {
            name: "Blair Smith",
            email: "bsmith91@faker.net",
            phone: "720-395-0987",
            bio: "Blessed with an abundance of milk, would love to connect with someone in need!",
            location: "littleton,co",
            donorStatus: 0
          }) {
            user {
              name
              id
              email
              phoneFormatter
              location
              bio
            }
          errors
          }
        }
        GQL
      end
    end
  end
end
