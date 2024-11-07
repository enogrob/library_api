module Mutations
    class CreateBook < BaseMutation
      argument :title, String, required: true
      argument :author, String, required: true
      argument :genre, String, required: false
      argument :published_year, Integer, required: false
  
      type Types::BookType
  
      def resolve(title:, author:, genre: nil, published_year: nil)
        Book.create!(
          title: title,
          author: author,
          genre: genre,
          published_year: published_year
        )
      end
    end
  end
  