module Mutations
  class CreateBook < BaseMutation
    # Define the input object for creating a book
    class BookInput < Types::BaseInputObject
      argument :title, String, required: true
      argument :author, String, required: true
      argument :genre, String, required: false
      argument :published_year, Integer, required: false
    end

    # Update the argument to use the BookInput object
    argument :book, BookInput, required: true

    # Return type for the mutation
    type Types::BookType

    # Resolve method using `book` input
    def resolve(book:)
      Book.create!(book.to_h)
    end
  end
end
