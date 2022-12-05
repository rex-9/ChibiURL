# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(username: "rex", password: "password")
User.create(username: "pu2", password: "password")

Url.create(user_id: 1, original_url: 'https://www.google.com', public: true, chibi_url: 'google')
Url.create(user_id: 2, original_url: 'https://medium.com/@sparkboldstudio/building-a-url-shortener-rails-app-96db60d3bf9d', public: true, chibi_url: 'Ref-1')
Url.create(user_id: 1, original_url: 'https://www.zauberware.com/en/articles/2019/create-a-url-shortener-with-ruby-on-rails', public: true, chibi_url: 'Ref-2')
Url.create(user_id: 1, original_url: 'https://clipboardjs.com/', public: true, chibi_url: 'Ref-3')
