# spec/factories/books.rb
FactoryBot.define do
    factory :book do
      title { "Sample Book Title" }
      author { "Sample Author" }
      genre { "Fiction" }
      publish_year { 2021 }
    end
  end
  