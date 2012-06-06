# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
200000.times do
  place = Place.create(:name => 'Place' + Faker::Lorem.words(2).join(' '))
end

200000.times do
  category = Category.create(:name => 'Category' + Faker::Lorem.words(2).join(' '))
end
