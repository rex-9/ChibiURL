# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Url.create(long: 'https://www.google.com', short: 'google')
Url.create(long: 'https://medium.com/@sparkboldstudio/building-a-url-shortener-rails-app-96db60d3bf9d', short: 'ref1')
Url.create(long: 'https://www.zauberware.com/en/articles/2019/create-a-url-shortener-with-ruby-on-rails', short: 'ref2')
