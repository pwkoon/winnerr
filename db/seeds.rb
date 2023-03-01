# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Wiping all previous instances of categories and listings
puts " Cleaning database..."
Category.destroy_all
Listing.destroy_all

puts "Creating users"
5.times do
  user = User.create(
    name: Faker::Name,
    encrypted_password: "Testing",
  )
end

puts "Creating categories and listings"

# TODO: Create 5 categories
5.times do
  category = Category.create(
    name: Faker::Job.field,
    description: Faker::Job.key_skill
  )
  puts "Category with ID: #{category.id} has been created."

  # Creating 10 listings to be stored in each category
end

# TODO: Create 10 listings
10.times do
  listing = Listing.create(
    title: Faker::Company.catch_phrase,
    description: Faker::Company.bs,
  )
end

puts "Finished!"
