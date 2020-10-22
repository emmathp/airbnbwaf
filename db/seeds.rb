# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

City.create!(city_name: "Nantes")
City.create!(city_name: "Brest")
City.create!(city_name: "Rennes")
City.create!(city_name: "Paris")

puts "4 villes crees" 

p "#{tp City.all}"

10.times do
  Dogsitter.create!(first_name: Faker::Name.first_name, city_id: 1)
end
puts "10 patients la liste"
p "#{tp Dogsitter.all}"

10.times do
  Dog.create!(name: Faker::Creature::Dog.name, master: Faker::Name.first_name, city_id:1, dogsitter_id:1)
end
puts "10 chiens la liste"
p "#{tp Dog.all}"

10.times do
  Stroll.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), dogsitter: Dogsitter.find(rand(1..10)), dog: Dog.find(rand(1..10)), city_id:1)
end
puts "10 rdv ont crees"

10.times do |i|
    10.times do |e|
        if Dog.find(i + 1).city == Dogsitter.find(e + 1).city
            Stroll.create!(dog: Dog.find(i + 1), dogsitter: Dogsitter.find(e + 1))
        end
    end
end
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
