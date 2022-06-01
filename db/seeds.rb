# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying users..."
User.destroy_all

puts "Creating users..."

user1 = User.create!(
  first_name: 'Kaan',
  last_name: 'Zenginer',
  username: 'kaanij',
  email: 'kaan@wepick.com',
  password: '123456',
  password_confirmation: '123456'
)

file = URI.open("https://res.cloudinary.com/dcmmzqxpj/image/upload/v1654079841/passportphoto_cuinou.jpg")

user1.photo.attach(io: file, filename: "kaan.png", content_type: "image/jpg")
user1.save

user2 = User.create!(
  first_name: "Isabel",
  last_name: 'Bruda',
  username: 'diebrudie',
  email: 'isabel@wepick.com',
  password: '123456',
  password_confirmation: '123456'
)

file2 = URI.open("https://res.cloudinary.com/dcmmzqxpj/image/upload/v1654080901/isabel-cut_qvngpj.jpg")

user2.photo.attach(io: file2, filename: "isabel.png", content_type: "image/jpg")
user2.save

user3 = User.create!(
  first_name: 'Beata',
  last_name: 'Volker',
  username: 'beataregina',
  email: 'beata@wepick.com',
  password: '123456',
  password_confirmation: '123456'
)

file3 = URI.open("https://res.cloudinary.com/dcmmzqxpj/image/upload/v1654081014/beata_pizvfq.jpg")

user3.photo.attach(io: file3, filename: "beata.png", content_type: "image/jpg")
user3.save

user4 = User.create!(
  first_name: 'Sergio',
  last_name: 'Pizarro',
  username: 'SergioPizarro',
  email: 'sergio@wepick.com',
  password: '123456',
  password_confirmation: '123456'
)

file4 = URI.open("https://res.cloudinary.com/dcmmzqxpj/image/upload/v1654080516/Sergio_mcrxlx.jpg")

user4.photo.attach(io: file4, filename: "sergio.png", content_type: "image/jpg")
user4.save

puts "Finished creating users!"

puts "Destroying activities..."
Activity.destroy_all
