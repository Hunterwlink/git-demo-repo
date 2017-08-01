User.create!(
    email: "test@test.com"
    password: "asdfasdf" 
    password_confirmation: "asdfasdf",
    name: "Admin User",
    roles: "site_admin"
    )
    
puts "1 Admin user created"

User.create!(
    email: "test2@test.com"
    password: "asdfasdf" 
    password_confirmation: "asdfasdf",
    name: "Regular User",
    )
    puts "1 Regular user created"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
