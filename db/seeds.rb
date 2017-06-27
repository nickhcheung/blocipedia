# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "random_data"

User.create!(
  email: "standard@bloc.com",
  password: "helloworld",
  password_confirmation: "helloworld"
)

User.create!(
  email: "admin@bloc.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  role: "admin"
)

User.create!(
  email: "premium@bloc.com",
  password: "helloworld",
  password_confirmation: "helloworld",
  role: "premium"
)

15.times do
  User.create!(
    email: Faker::Internet.unique.safe_email,
    password: Faker::Internet.password(6)
  )
end

25.times do
  Wiki.create!(
    user: User.all.sample,
    title: Faker::Hacker.noun,
    body: Faker::Hacker.say_something_smart
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
