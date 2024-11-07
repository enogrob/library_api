require 'rails_helper'

RSpec.describe 'Books Query', type: :request do
  describe 'fetch all books' do
    it 'returns all books' do
      FactoryBot.create_list(:book, 3)
      post '/graphql', params: { query: '{ books { title author } }' }

      json = JSON.parse(response.body)
      expect(json['data']['books'].size).to eq(3)
    end
  end
end
