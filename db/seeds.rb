require './models/user'
require './models/product'
require './models/review'
require './models/category'
require 'faker'

# seeds.rb is a way of automating the population of the database with testing data.

(0..10).each do |i|
    User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      address: Faker::Address.street_address
    )
end

(0..10).each do |i|
    Product.create(
      name: Faker::Beer.name
    )
end

# @all_users = User.all
# @all_products = Product.all

(0..10).each do |i|
    Review.create(
      content: Faker::Hipster.sentence,
      user_id: rand(1..11),
      product_id: rand(1..11)
    )
end

(0..3).each do |i|
    Category.create(
      name: Faker::Hipster.word
    )
end
