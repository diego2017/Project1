# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Welcome to this seed script :)"

User.destroy_all
Place.destroy_all
Feature.destroy_all
Review.destroy_all

u1 = User.create(name: "Diego", email: "diego@a.com", password: "cake")
u2 = User.create(name: "Mary", email: "mary@a.com", password: "cake")
u3 = User.create(name: "Tom", email: "tom@a.com", password: "cake")
u4 = User.create(name: "Daniel", email: "daniel@a.com", password: "cake")
u5 = User.create(name: "Laura", email: "laura@a.com", password: "cake")
u6 = User.create(name: "Miriam", email: "miriam@a.com", password: "cake")
u7 = User.create(name: "Alex", email: "alex@a.com", password: "cake")
u8 = User.create(name: "rebecca", email: "rebecca@a.com", password: "cake")
u9 = User.create(name: "Amy", email: "amy@a.com", password: "cake")
u10 = User.create(name: "Christina", email: "christina@a.com", password: "cake")

p1 = Place.create(user:u1 , name: "Establishment", int_number: "", street_number: "252", street_name: "George St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", image: "i2c5b1vaqnsfznsg7ukf")
p2 = Place.create(user:u2 , name: "The Scary Canary", int_number: "", street_number: "469", street_name: "Kent St", suburb: "Sydney", state: "NSW", postcode: "NSW", country: "Australia", image: "u4zookcpcapefa5pjieb")
p3 = Place.create(user:u2 , name: "Marquee", int_number: "", street_number: "5", street_name: "Pirrama Rb", suburb: "Pyrmont", state: "NSW", postcode: "2009", country: "Australia", image: "bfmgglttyxzqah6ax5zb")
p4 = Place.create(user:u3 , name: "Tio's", int_number: "", street_number: "14", street_name: "Foster St", suburb: "Surry Hills", state: "NSW", postcode: "2010", country: "Australia", image: "dn48lizfxkwf1erqi7jj")
p5 = Place.create(user:u3 , name: "Bavarian Bier Café", int_number: "", street_number: "24", street_name: "York St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", image: "akorsvrqmtolr7vfd2b0")
p6 = Place.create(user:u3, name: "Opera Bar", int_number: "", street_number: "", street_name: "Macquarie St,", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", image: "lpw85ohcmbp01gvjx7wt")
p7 = Place.create(user:u2 , name: "Bitter Phew", int_number: "1", street_number: "137", street_name: "Oxford St", suburb: "Darlinghurst", state: "NSW", postcode: "2010", country: "Australia", image: "lw4lgp2blsfg5ji486i5")
p8 = Place.create(user:u3 , name: "Bar Luca", int_number: "", street_number: "52", street_name: "Phillip St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", image: "l1aukumoerpy1a0tzsmk")
p9 = Place.create(user:u3 , name: "Shady Pines Saloon", int_number: "4", street_number: "256", street_name: "Crown St", suburb: "Darlinghurst", state: "NSW", postcode: "2000", country: "Australia", image: "qazfzzfiox3guvytkfmh")
p10 = Place.create(user:u1 , name: "Ivy", int_number: "", street_number: "330", street_name: "George St", suburb: "Sydney", state: "NSW", postcode: "2000", country: "Australia", image: "qgfewjpnvbe1k2nlqslv")

f1 = Feature.create(feature_name: "Imported Beers", feature_description: "")
f2 = Feature.create(feature_name: "Live Music", feature_description: "")
f3 = Feature.create(feature_name: "Good location", feature_description: "")
f4 = Feature.create(feature_name: "Dining", feature_description: "")
f5 = Feature.create(feature_name: "Snacks", feature_description: "")
f6 = Feature.create(feature_name: "Cocktails", feature_description: "")
f7 = Feature.create(feature_name: "Uni / Backpackers Bar", feature_description: "")
f8 = Feature.create(feature_name: "Dance Club", feature_description: "")
f9 = Feature.create(feature_name: "Craft Beers", feature_description: "")
f10 = Feature.create(feature_name: "Good prices", feature_description: "")

p1.features << f2
p1.features << f3
p1.features << f4
p1.features << f5
p1.features << f6
p1.features << f8
p2.features << f3
p2.features << f4
p2.features << f5
p2.features << f7
p2.features << f8
p2.features << f10
p3.features << f1
p3.features << f4
p3.features << f5
p3.features << f6
p3.features << f8
p4.features << f1
p4.features << f4
p4.features << f5
p4.features << f6
p4.features << f10
p5.features << f1
p5.features << f3
p5.features << f4
p5.features << f5
p5.features << f8
p5.features << f9
p6.features << f1
p6.features << f2
p6.features << f3
p6.features << f4
p6.features << f5
p6.features << f6
p7.features << f1
p7.features << f3
p7.features << f5
p7.features << f9
p7.features << f10
p8.features << f1
p8.features << f3
p8.features << f4
p8.features << f5
p8.features << f10
p9.features << f1
p9.features << f3
p9.features << f5
p9.features << f10
p10.features << f1
p10.features << f2
p10.features << f3
p10.features << f4
p10.features << f6
p10.features << f8

Review.create(place:p1, feature:f2 , user:u4 , like: false)
Review.create(place:p1, feature:f3 , user:u4 , like: true)
Review.create(place:p1, feature:f8 , user:u5 , like: false)
Review.create(place:p1, feature:f6 , user:u5 , like: true)
Review.create(place:p1, feature:f5 , user:u5 , like: false)
Review.create(place:p1, feature:f4 , user:u4 , like: true)
Review.create(place:p1, feature:f8 , user:u4 , like: false)
Review.create(place:p1, feature:f2 , user:u7 , like: true)
Review.create(place:p1, feature:f4 , user:u7 , like: true)
Review.create(place:p1, feature:f2 , user:u8 , like: false)
Review.create(place:p1, feature:f6 , user:u7 , like: true)


#
# features_places = [
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
# features_places.each do |location|   #go through each place in the array
#   place_id = location[:place]
#   features_places[:features].each do |fe|
#     feature_id = location[:features][fe]
#     Place.find(place_id).features << Feature.find(feature_id)
#   end
# end


puts "Our job here is done!"
