namespace :db do
  desc "populate categories"
  task :populate_case02 => :environment do
    require 'faker'

    time = Benchmark.measure do
      200.times do
        category = Category.create(:name => 'Category' + Faker::Lorem.words(2).join(' '))
      end
      
      iterations = [
        {
          :records => 1000,
          :categories => 5
        },
        {
          :records => 100000,
          :categories => 1
        }]
      
      iterations.each do |iteration|
        # Place.first(iteration[:records]).each do |place| # AR
        Place.limit(iteration[:records]).each do |place| # Mongo
          categories_count = iteration[:categories]
          categories_count.times do
            skip = rand(Category.count)
            # random_category = Category.first(:offset => skip) # AR
            random_category = Category.first(:skip => skip) # Mongo
            place.categories <<  random_category unless place.category_ids.include?(random_category.id)
          end
        end
      end
    end
    puts time
  end
end
