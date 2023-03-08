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
User.destroy_all

puts "Creating users"

# TODO: Creating users
wankoon = User.create!(email: "wankoon@gmail.com", password: "testing")
vivian = User.create!(email: "vivian@gmail.com", password: "testing")
jufri = User.create!(email: "jufri@gmail.com", password: "testing")
yuelong = User.create!(email: "yuelong@gmail.com", password: "testing")

puts "Creating price tables"

puts "Creating 6 categories with 5 listings each"

# TODO: Create 1st category - marketing
marketing = Category.create!(
  name: "Marketing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Marketing`
  list11 = Listing.create!(
    title: "Digital marketing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: marketing.id
  )

  list12 = Listing.create!(
    title: "SEO",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: marketing.id
  )

  list13 = Listing.create!(
    title: "SEM",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: marketing.id
  )

  list14 = Listing.create!(
    title: "Strategy",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: marketing.id
  )

  list15 = Listing.create!(
    title: "Advertising",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: marketing.id
  )

  puts "Done - '#{marketing.name}' category, associated with #{marketing.listings.count} listings, successfully created!"


# TODO: Create 2nd category
animation = Category.create!(
  name: "Animation",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Animation`
  Listing.create!(
    title: "Video editing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: animation.id
  )

  Listing.create!(
    title: "Blending",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: animation.id
  )

  Listing.create!(
    title: "Ray tracing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: animation.id
  )

  Listing.create!(
    title: "Modelling",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: animation.id
  )

  Listing.create!(
    title: "Shadows",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: animation.id
  )

  puts "Done - '#{animation.name}' category, associated with #{animation.listings.count} listings, successfully created!"

# TODO: Create 3rd Category `Audio`
audio = Category.create!(
  name: "Audio",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Audio`
  Listing.create!(
    title: "Music editing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: jufri.id,
    category_ids: audio.id
  )

  Listing.create!(
    title: "Mixing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: jufri.id,
    category_ids: audio.id
  )

  Listing.create!(
    title: "Tuning",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: jufri.id,
    category_ids: audio.id
  )

  Listing.create!(
    title: "DJ Drops",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: jufri.id,
    category_ids: audio.id
  )

  Listing.create!(
    title: "Beat making",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: jufri.id,
    category_ids: audio.id
  )

  puts "Done - '#{audio.name}' category, associated with #{audio.listings.count} listings, successfully created!"

# TODO: Create 4th category `Business`
business = Category.create!(
  name: "Business",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Audio`
  Listing.create!(
    title: "Legal",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: yuelong.id,
    category_ids: business.id
  )

  Listing.create!(
    title: "Finance",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: yuelong.id,
    category_ids: business.id
  )

  Listing.create!(
    title: "Human resource",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: yuelong.id,
    category_ids: business.id
  )

  Listing.create!(
    title: "Consultancy",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: yuelong.id,
    category_ids: business.id
  )

  Listing.create!(
    title: "Market research",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: yuelong.id,
    category_ids: business.id
  )

  puts "Done - '#{business.name}' category, associated with #{business.listings.count} listings, successfully created!"

# TODO: Create 5th category `Lifestyle`
lifestyle = Category.create!(
  name: "Lifestyle",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Audio`
  Listing.create!(
    title: "Career",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: lifestyle.id
  )

  Listing.create!(
    title: "Fitness",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: lifestyle.id
  )

  Listing.create!(
    title: "Nutrition",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: lifestyle.id
  )

  Listing.create!(
    title: "Arts",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: lifestyle.id
  )

  Listing.create!(
    title: "Beauty",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: wankoon.id,
    category_ids: lifestyle.id
  )

  puts "Done - '#{lifestyle.name}' category, associated with #{lifestyle.listings.count} listings, successfully created!"

# TODO: Create the last category... like seriously why you need 6 categories sia... `Writing`
writing = Category.create!(
  name: "Writing",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
  )

  # TODO: Create 5 listings under `Writing`
  Listing.create!(
    title: "Blogging",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: writing.id
  )

  Listing.create!(
    title: "CV writing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: writing.id
  )

  Listing.create!(
    title: "UX writing",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: writing.id
  )

  Listing.create!(
    title: "White papers",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: writing.id
  )

  Listing.create!(
    title: "Case studies",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi molestie vehicula nunc, volutpat hendrerit ligula. Proin felis mi, tristique vel vestibulum et, congue eu felis. Ut hendrerit molestie ante non dapibus. Sed tristique aliquam ante ut ultrices. Aliquam in augue ullamcorper, dapibus dolor in, sagittis nulla.",
    user_id: vivian.id,
    category_ids: writing.id
  )

  puts "Done - '#{writing.name}' category, associated with #{writing.listings.count} listings, successfully created!"


# TODO: Seed images to listing
require "open-uri"
listings = Listing.all
i = 0
# loop do
#   file = URI.open("https://res.cloudinary.com/dbaunlw7m/image/upload/v1677915476/stock_photo_ozgvfl.jpg")
#   listings[i].photo.attach(io: file, filename: "stock_photo_ozgvfl.jpg", content_type:"image/jpeg")
#   listings[i].save
#   if i == (listings.last.id - 1)
#     break
#   end
# end

# TODO: Seed prices
30.times do |list|
  Price.create!(
    tier: "Basic",
    amount: Faker::Number.between(from: 0.0, to: 100.0).round(2),
    description: "Praesent a tincidunt nisi, posuere vehicula massa. Nunc nibh urna, viverra sit amet rutrum vitae, vulputate non erat.",
    listing_id: list + 1
  )
  puts "Created #{list + 1} prices in the `prices` table!"
end

# loop do
#   listings[i].photo.attach(io: File.open('app/assets/images/seed_images/stock_yoga.jpg'), filename: 'stock_yoga.jpg', content_type: "image/jpeg")
#   listings[i].save
#   if i == (listings.last.id - 1)
#     break
#   end
# end

puts "Finished!"
