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

Bakery.create(name: "Cakery Bakery", location: "81 Prospect St, Brooklyn, NY", phone: "(555)555-5555", hours: "Tuesday - Sunday, 9am - 6pm", img_url: "https://thecakeblog.com/wp-content/uploads/2011/08/peggy_porschen_cakes5.jpg", about: "About this bakery alsdasdklgafjgla fgoahfdgalfkg", email: "cakerybakery@gmail.com", password: "yum")

Baker.create(name: "Antony", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-4.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Briony", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-5.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Dan", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-7.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Imelda", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-2.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Jon", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-8.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Karen", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-9.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Kim-Joy", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-6.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Luke", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-1.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Manon", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-3.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Rahul", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-10.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Ruby", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project.jpg" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Terry", employment_status: "active" , bio: "This is my bio", img_url: "https://thegreatbritishbakeoff.co.uk/wp-content/uploads/2018/08/New-Project-11.jpg" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Gracie", employment_status: "active" , bio: "This is my bio", img_url: "https://ca.slack-edge.com/T02MD9XTF-UD5PW68JW-55f48a258cbc-512" , quote: "This is my quote", star_baker: true, bakery_id: 1)
Baker.create(name: "Mazen", employment_status: "active" , bio: "This is my bio", img_url: "https://ca.slack-edge.com/T02MD9XTF-UFKMPLPQ8-a306271a419d-512" , quote: "This is my quote", star_baker: false, bakery_id: 1)
Baker.create(name: "Greg", employment_status: "active" , bio: "This is my bio", img_url: "https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512" , quote: "This is my quote", star_baker: false, bakery_id: 1)

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
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")
Flavor.create(name: Faker::Dessert.unique.flavor, description: "This flavor is super YUM")

Ingredient.create(name: "Eggs", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Milk", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Baking Soda", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Flour", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Apple Cider Vinegar", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Vanilla", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Chocolate", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)
Ingredient.create(name: "Fondant", cake_id: Cake.all.sample.id, flavor_id: Flavor.all.sample.id)