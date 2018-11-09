# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Starting seeding process..."

puts "Destroy all Ingredients and Cocktails"
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "Create new seeds!"

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "apple")
Ingredient.create(name: "rum")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "ice cubes")

20.times do
  cocktail = Cocktail.create(
    name: Faker::Food.fruits
  )
 3.times do
    Dose.create(
      description: Faker::Food.measurement,
      ingredient: Ingredient.last,
      ingredient: Ingredient.first,
      cocktail: cocktail
    )
  end
end

puts "Finished seeding process!"
