# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'json'

# filepath = 'db/seeds_data/drinks.json'

# serialized_drinks = File.read(filepath)

# hash_drinks = JSON.parse(serialized_drinks)

# #drinks is a ruby hash

# hash_drinks['drinks'].each do |d|
#   value = d['strIngredient1']
#   Ingredient.create(name: value)
# end
# # p hash_drinks['drinks']


Ingredient.destroy_all
Ingredient.create(name: 'peper')
Ingredient.create(name: 'vodka')
Ingredient.create(name: 'citron')
Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint')
Ingredient.create(name: 'lemon')
