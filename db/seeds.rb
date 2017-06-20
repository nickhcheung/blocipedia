# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require "random_data"

User.create!(
  email: "nickhcheung@hotmail.com",
  password: "helloworld",
  password_confirmation: "helloworld"
)

#create first wiki
Wiki.create!(
  user: User.all.sample,
  title: "sample title",
  body: "some body text for first seed test"
)

20.times do
  Wiki.create!(
    user: User.all.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
