# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Welcome to this seed script :)"

User.create(name: "diego", email: "diego@a.com", password_digest: "cake")
User.create(name: "mary", email: "mary@a.com", password_digest: "cake")
User.create(name: "tom", email: "tom@a.com", password_digest: "cake")
User.create(name: "daniel", email: "daniel@a.com", password_digest: "cake")
User.create(name: "laura", email: "laura@a.com", password_digest: "cake")
User.create(name: "miriam", email: "miriam@a.com", password_digest: "cake")
User.create(name: "alex", email: "alex@a.com", password_digest: "cake")
User.create(name: "rebecca", email: "rebecca@a.com", password_digest: "cake")
User.create(name: "Amy", email: "amy@a.com", password_digest: "cake")
User.create(name: "Christina", email: "christina@a.com", password_digest: "cake")

Place.create(user_id:1 , name: "Establishment", int_number: "", street_number: "252", street_name: "George St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")
Place.create(user_id:2 , name: "The Scary Canary", int_number: "", street_number: "469", street_name: "Kent St", suburb: "Sydney", state: "NSW", postcode: "NSW", country: "Australia", geo_location: "")
Place.create(user_id:2 , name: "Marquee", int_number: "", street_number: "5", street_name: "Pirrama Rb", suburb: "Pyrmont", state: "NSW", postcode: "2009", country: "Australia", geo_location: "")
Place.create(user_id:3 , name: "Tio's", int_number: "", street_number: "14", street_name: "Foster St", suburb: "Surry Hills", state: "NSW", postcode: "2010", country: "Australia", geo_location: "")
Place.create(user_id:3 , name: "Bavarian Bier Café", int_number: "", street_number: "24", street_name: "York St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")
Place.create(user_id:3, name: "Opera Bar", int_number: "", street_number: "", street_name: "Macquarie St,", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")
Place.create(user_id:2 , name: "Bitter Phew", int_number: "1", street_number: "137", street_name: "Oxford St", suburb: "Darlinghurst", state: "NSW", postcode: "2010", country: "Australia", geo_location: "")
Place.create(user_id:3 , name: "Bar Luca", int_number: "", street_number: "52", street_name: "Phillip St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")
Place.create(user_id:3 , name: "Shady Pines Saloon", int_number: "4", street_number: "256", street_name: "Crown St", suburb: "Darlinghurst", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")
Place.create(user_id:1 , name: "Ivy", int_number: "", street_number: "330", street_name: "George St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", geo_location: "")

Feature.create(feature_name: "Imported Beers", feature_description: "")
Feature.create(feature_name: "Live Music", feature_description: "")
Feature.create(feature_name: "Good location", feature_description: "")
Feature.create(feature_name: "Dining", feature_description: "")
Feature.create(feature_name: "Snacks", feature_description: "")
Feature.create(feature_name: "Cocktails", feature_description: "")
Feature.create(feature_name: "Uni / Backpackers Bar", feature_description: "")
Feature.create(feature_name: "Dance Club", feature_description: "")
Feature.create(feature_name: "Craft Beers", feature_description: "")
Feature.create(feature_name: "Good prices", feature_description: "")

Review.create(place_id:1 , feature_id:2 , user_id:4 , like: false)
Review.create(place_id:1 , feature_id:3 , user_id:4 , like: true)
Review.create(place_id:1 , feature_id:8 , user_id:5 , like: false)
Review.create(place_id:1 , feature_id:6 , user_id:5 , like: true)
Review.create(place_id:1 , feature_id:5, user_id:5 , like: false)
Review.create(place_id:1 , feature_id:4 , user_id:4 , like: true)
Review.create(place_id:1 , feature_id:8 , user_id:4 , like: false)
Review.create(place_id:1 , feature_id:2 , user_id:7 , like: true)
Review.create(place_id:1 , feature_id:4 , user_id:7 , like: true)
Review.create(place_id:1 , feature_id:2 , user_id:8 , like: false)
Review.create(place_id:1 , feature_id:6 , user_id:7 , like: true)


Place.find(1).features << Feature.find(2)
Place.find(1).features << Feature.find(3)
Place.find(1).features << Feature.find(4)
Place.find(1).features << Feature.find(5)
Place.find(1).features << Feature.find(6)
Place.find(1).features << Feature.find(8)
Place.find(2).features << Feature.find(3)
Place.find(2).features << Feature.find(4)
Place.find(2).features << Feature.find(5)
Place.find(2).features << Feature.find(7)
Place.find(2).features << Feature.find(8)
Place.find(2).features << Feature.find(10)
Place.find(3).features << Feature.find(1)
Place.find(3).features << Feature.find(4)
Place.find(3).features << Feature.find(5)
Place.find(3).features << Feature.find(6)
Place.find(3).features << Feature.find(8)
Place.find(4).features << Feature.find(1)
Place.find(4).features << Feature.find(4)
Place.find(4).features << Feature.find(5)
Place.find(4).features << Feature.find(6)
Place.find(4).features << Feature.find(10)
Place.find(5).features << Feature.find(1)
Place.find(5).features << Feature.find(3)
Place.find(5).features << Feature.find(4)
Place.find(5).features << Feature.find(5)
Place.find(5).features << Feature.find(8)
Place.find(5).features << Feature.find(9)
Place.find(6).features << Feature.find(1)
Place.find(6).features << Feature.find(2)
Place.find(6).features << Feature.find(3)
Place.find(6).features << Feature.find(4)
Place.find(6).features << Feature.find(5)
Place.find(6).features << Feature.find(6)
Place.find(7).features << Feature.find(1)
Place.find(7).features << Feature.find(3)
Place.find(7).features << Feature.find(5)
Place.find(7).features << Feature.find(9)
Place.find(7).features << Feature.find(10)
Place.find(8).features << Feature.find(1)
Place.find(8).features << Feature.find(3)
Place.find(8).features << Feature.find(4)
Place.find(8).features << Feature.find(5)
Place.find(8).features << Feature.find(10)
Place.find(9).features << Feature.find(1)
Place.find(9).features << Feature.find(3)
Place.find(9).features << Feature.find(5)
Place.find(9).features << Feature.find(10)
Place.find(10).features << Feature.find(1)
Place.find(10).features << Feature.find(2)
Place.find(10).features << Feature.find(3)
Place.find(10).features << Feature.find(4)
Place.find(10).features << Feature.find(6)
Place.find(10).features << Feature.find(8)

#
# features_array = [
#   {
#     place: 1,
#     features: [2, 3, 4, 5, 6, 8]
#   },
#   {
#     place: 2,
#     features: [3, 4, 5, 7, 8, 10]
#   },
#   {
#     place: 3,
#     features: [1, 4, 5, 6, 8]
#   },
#   {
#     place: 4,
#     features: [1, 4, 5, 6, 10]
#   },
#   {
#     place: 5,
#     features: [1, 3, 4, 5, 8, 9]
#   },
#   {
#     place: 6,
#     features: [1, 2, 3, 4, 5, 6]
#   },
#   {
#     place: 7,
#     features: [1, 3, 5, 9, 10]
#   },
#   {
#     place: 8,
#     features: [1, 3, 4, 5, 10]
#   },
#   {
#     place: 9,
#     features: [1, 3, 5, 10]
#   },
#   {
#     place: 10,
#     features: [1, 2, 3, 4, 6, 8]
#   },
# ]
#
# # Enter the features for each place, and create random reviews for the features entered
# features_array.each do |fa|   #go through each place in the array
#   place_id = fa[:place]
#   features_array[:features].each do |fe|
#     feature_id = fe
#     Place.find(place_id).features << Feature.find(feature_id)
#   end
# end


puts "Our job here is done!"
