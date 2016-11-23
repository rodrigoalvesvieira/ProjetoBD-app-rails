# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Usuario.destroy_all

password = "asenhaverdadeira"

users = [
  { login: "rodrigo", password: password },
  { login: "guido", password: password },
  { login: "professor", password: password }
]

users.each do |user|
  user[:email] = "#{user[:login]}@gmail.com"
  User.create user
end

puts "#{User.count} users generated."
