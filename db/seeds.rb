# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# goat_milk = Product.create(title: 'Hello')

# unless goat_milk.valid?
#   puts 'VALIDATION ERRORS:'
#   goat_milk.errors.messages.each do |column, errors|
#     errors.each do |error|
#       puts "- The #{column} #{error}."
#     end
#   end
# end

# puts Product.count

# 676.times do
#   new_product = Product.create(
#     title: Faker::Food.ingredient,
#     description: Faker::Food.description,
#     price: Faker::Commerce.price,
#     stock_quantity: Faker::Number.between(from: 1, to: 100)
#   )
# end

require 'csv'

Product.destroy_all
Category.destroy_all

csv_file = Rails.root.join('db/products.csv')
csv_data = File.read(csv_file)

products = CSV.parse(csv_data, headers: true)

# If CSV was created by Excel in Windows you may also need to set an encoding type:
# products = CSV.parse(csv_data, headers: true, encoding: 'iso-8859-1')

# products.each do |_product|
#   category = Category.find_or_create_by(name: 'category')

#   if category&.valid?

#   end
# end

# title: Faker::Food.ingredient,
#   description: Faker::Food.description,
#   price: Faker::Commerce.price,
#   stock_quantity: Faker::Number.between(from: 1, to: 100)
