# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 seeding"

puts "⚡ users"
user1 = Landlord.create(username: "Rajab", password: "user1", full_name: "Rajab Karume")
user2 = Landlord.create(username: "George", password: "user2", full_name: "George Wanyoike")
user3 = Landlord.create(username: "Alamin", password: "user3", full_name: "Alamin Juma")
user4 = Landlord.create(username: "Lucy", password: "user4", full_name: "Lucy Maingi")


puts "⚡ apartments"
apartments = []
15.times do
    apartments << Apartment.create(name:Faker::Ancient.god, location: ["Ongata Rongai", "Langata", "Ruiru", "Juja", "Roysambu", "Kileleshwa", "South B" ].sample, number_of_houses: rand(1..50).to_i)
end

puts "🦸‍♀️ tenants"
tenants = []
90.times do
    tenants << Tenant.create(
        name: Faker::Name.name, 
        phone_number: rand(254700000000..254799999999).to_i,
        email: Faker::Internet.email,
        house_number: rand(1..40),
        rent: rand(3000..70000).to_i,
        password: Faker::Internet.password
    )
end
