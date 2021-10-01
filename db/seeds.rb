# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'dono@mail.com', 
  password: 'password', 
  password_confirmation: 'password')

25.times do |i|
  post = Post.new
  post.title = Faker::Lorem.sentence(word_count: 3, random_words_to_add: 7)
  post.description = Faker::Lorem.paragraph_by_chars(number: 1400)
  post.user = User.first
  post.thumbnail.attach(io: open("https://picsum.photos/1920/1080"), filename: "#{i}_thumbnail.jpg")
  post.save
end