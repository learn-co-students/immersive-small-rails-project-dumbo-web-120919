# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Baker.destroy_all
Flavor.destroy_all
Cake.destroy_all
Ingredient.destroy_all

Bakery.create(name: "Cakery Bakery", location: "81 Prospect St, Brooklyn, NY", phone: "(555)555-5555", hours: "Tuesday - Sunday, 9am - 6pm", img_url: "image", about: "About this bakery alsdasdklgafjgla fgoahfdgalfkg", email: "cakerybakery@gmail.com", password: "yum")

Baker.create(name: "Antony", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Briony", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Dan", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Imelda", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Jon", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Karen", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Kim-Joy", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Luke", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Manon", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Rahul", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Ruby", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Terry", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Gracie", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Mazen", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Greg", employment_status: "active" , bio: "This is my bio", img_url: "image" , quote: "This is my quote", star_baker: false, bakery_id: 1)

Cake.create(name: "Fox Cake", category: "animal" , occasion: "birthday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Crystal Cake", category: "crystal" , occasion: "birthday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Flower Cake", category: "floral" , occasion: "wedding", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Ice Cream Cake", category: "ice cream" , occasion: "birthday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Spiderman Cake", category: "character" , occasion: "birthday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Cookie Cake", category: "cookie" , occasion: "birthday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)
Cake.create(name: "Holiday Cake", category: "floral" , occasion: "holiday", description: "This is a great cake", img_url: "image" , serving_size: 12, dietary_restrictions: "none", baker_id: Baker.all.sample.id, bakery_id: 1)

Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is also YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is very YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is wildly YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is crazy YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is totally YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is amazingly YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is immensely YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is especially YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is supremely YUM")

Ingredient.create(name: "Eggs", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Milk", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Baking Soda", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Flour", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Apple Cider Vinegar", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Vanilla", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Chocolate", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Fondant", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)