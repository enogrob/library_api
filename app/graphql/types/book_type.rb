module Types
    class BookType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :author, String, null: false
      field :genre, String, null: true
      field :publish_year, Integer, null: true
    end
  end
  