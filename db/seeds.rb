require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rand(0..5).to_a.sample do |num|


categories = [ "chinese", "italian", "japanese", "french", "belgian" ]


5.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample)
  # puts restaurant
  # puts restaurant.valid?
  # restaurant.save
end


# puts 'Creating restaurants...'
# restaurants_attributes = [
#   {
#     name:         "Epicure au Bristol",
#     address:      "112 rue du Fg St-Honoré 75008 Paris",
#     category:     "french",
#     phone_number: "76237638"
#   },
#   {
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     category:     "belgian",
#     phone_number: "81972873"
#   },
#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     category:     "french",
#     phone_number: "54673638"
#   },

#   {
#     name:         "Pizza Hut",
#     address:      "23 Rue du Gare",
#     category:     "italian",
#     phone_number: "46276823"
#   },
#   {
#     name:         "Chinese Garden",
#     address:      "109 Sesame Street",
#     category:     "chinese",
#     phone_number: "74638292"
#   }
# ]
# Restaurant.create!(restaurants_attributes)
