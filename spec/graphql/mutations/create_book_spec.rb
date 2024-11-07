require 'rails_helper'

RSpec.describe 'Create Book Mutation', type: :request do
  describe 'creating a new book' do
    it 'creates a book successfully' do
      mutation = <<~GQL
        mutation {
          createBook(book: { title: "New Book", author: "Author Name" }) {
            title
            author
          }
        }
      GQL

      post '/graphql', params: { query: mutation }

      json = JSON.parse(response.body)
      puts json  # Inspect the response if needed
      expect(json.dig('data', 'createBook', 'title')).to eq('New Book')
      expect(json.dig('data', 'createBook', 'author')).to eq('Author Name')
    end
  end
end
