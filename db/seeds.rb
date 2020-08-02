# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# user1 = User.create([
#   {
#     name: "Paolo Maldini",
#     email: "paolomaldini@maldini.com",
#     password_digest: "1234"
#   }
# ])

10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: "1234")
end
  
 recyclings = Recycling.create([
  {
    name: "Glass"
  },
  {
    name: "Plastic"
  },
  {
    name: "Aluminum"
  },
  {
    name: "Plastic Bottle"
  },
  {
    name: "Plastic Fork"
  },
  {
    name: "Soda Can"
  },
  {
    name: "Book"
  },
  {
    name: "Paper"
  },
  {
    name: "Mason Jar"
  },
  {
    name: "Paper Envelope"
  }
])

3.times do
  Organic.create(name: Faker::Food.fruits)
end

4.times do
  Organic.create(name: Faker::Food.vegetables)
end

3.times do
  Organic.create(name: Faker::Dessert.variety)
end

garbages = Garbage.create([
  {
    name: "Fabric"
  },
  {
    name: "Black Plastic Container"
  },
  {
    name: "Hot Drink Cup"
  },
  {
    name: "Wrapping Paper"
  },
  {
    name: "Styrofoam"
  },
  {
    name: "Cigarette Butt"
  },
  {
    name: "Light Bulb"
  },
  {
    name: "Gum Wrapper"
  },
  {
    name: "Straw"
  },
  {
    name: "Milk Box"
  }
])