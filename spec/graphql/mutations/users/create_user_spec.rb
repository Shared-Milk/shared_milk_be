require 'rails_helper'

module Mutations
  module Users
    RSpec.describe CreateUser, type: :request do
      describe '.resolve' do
        it 'creates a user' do
          expect(User.count).to eq(0)
          require "pry"; binding.pry
          post '/graphql', params: {query: query}
          expect(User.count).to eq(1)
        end

        it 'returns a user' do
          post '/graphql', params: { query: query }
          json = JSON.parse(response.body)
          data = json['data']
          expect(data['user']['name']).to eq('Samantha')
          expect(data['user']['email']).to eq("so@gmail.com")
          expect(data['user']['phone']).to eq("4231563232")
          expect(data['user']['bio']).to eq("abc")
          expect(data['user']['location']).to eq("Denver, CO")
          expect(data['user']['donorStatus']).to eq(0)
        end

        it 'returns skills for a user' do
          post '/graphql', params: { query: query }
          user = User.last
        end
      end

      def query
        <<~GQL
        mutation {
          user: createUser(
          input: {
            name: "Samantha",
            email: "so@gmail.com",
            phone: "4231563232",
            bio: "abc",
            location: "Denver, CO",
            donorStatus: 0
          }
          ) {
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
