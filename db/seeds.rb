# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


50.times do
  category = Category.create(:name => 'Category' + Faker::Lorem.words(2).join(' '))
end

Place.all.each do |place|
  categories_count = rand(5)
  categories_count.times do
    random_category = Category.find(rand(49)+1)
    place.categories <<  random_category unless place.category_ids.include?(random_category.id)
  end
end

