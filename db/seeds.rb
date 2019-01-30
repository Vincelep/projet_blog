# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


#10.times do 
  #user = User.create!(first_name:Faker::Name.first_name,last_name:Faker::Name.last_name,email: Faker::Internet.email)
#end


10.times do 
	article = Article.create!(title:Faker::RickAndMorty.location, content:Faker::RickAndMorty.quote, user_id: rand(User.first.id..User.last.id))
end