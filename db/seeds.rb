# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


10.times do 
  user = User.create!(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,email: Faker::Internet.email)
end

5.times do
  category = Category.create!(content: Faker::Dessert.unique.flavor)
end

10.times do 
	article = Article.create!(title:Faker::RickAndMorty.location, content:Faker::RickAndMorty.quote, user_id: (rand(User.first.id..User.last.id)), category_id: (rand(Category.first.id..Category.last.id)))
end

15.times do 
	comment = Comment.create(content:Faker::RickAndMorty.quote, user_id: (rand(User.first.id..User.last.id)), article_id: (rand(Article.first.id..Article.last.id)))
end

15.times do 
	like = Like.create(user_id: (rand(User.first.id..User.last.id)), article_id: (rand(Article.first.id..Article.last.id)))
end