# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p Ingredient.all
Ingredient.destroy_all
p Ingredient.all

ingredients = %w(lemon ice mint lime kiwi milk sugar vodka whiskey orange gin brandy)

ingredients.each do |ingredient|
  p Ingredient.create(name: ingredient)
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "lime")
# Ingredient.create(name: "kiwi")
# Ingredient.create(name: "milk")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "whiskey")
# Ingredient.create(name: "orange")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "brandy")
# Ingredient.create(name: "barcardi")
# Ingredient.create(name: "campari")
# Ingredient.create(name: "amaretto")
# Ingredient.create(name: "scotch")
# Ingredient.create(name: "black sambuca")
# Ingredient.create(name: "egg yolk")

puts 'Created x amount of ingredients'
