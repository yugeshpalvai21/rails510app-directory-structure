# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'India', population: 130000000)
Country.create('name' => 'Srilanka', 'population'=> 5000000)

Country.create([{name: 'Germany', population: 15000000}, {name: 'spain', population: 14500000}])

country = Country.new

country.name = 'NewZeland'
country.population = 1600000
country.save

puts "Congrats!!! #{Country.count} countries created successfully..."