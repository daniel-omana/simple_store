# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goat_milk = Product.create(title: 'Hello')

unless goat_milk.valid?
  puts 'VALIDATION ERRORS:'
  goat_milk.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "- The #{column} #{error}."
    end
  end
end

puts Product.count
