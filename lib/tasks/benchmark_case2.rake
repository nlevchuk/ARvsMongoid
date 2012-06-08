namespace :benchmark do
  desc "case 1"
  task :case01 => :environment do
    ids = Category.all.map(&:id).map(&:to_s)
    results = []
    counts = [10, 100]
    
    counts.each do |count|
      time = Benchmark.measure do
        count.times do
          id = ids[rand(ids.size)]
          cat = Category.find(id).places.to_a
        end
      end
      results << { count => time }
    end
    puts results
  end

  desc "case 2"
  task :case02 => :environment do
    ids = Place.limit(100).map(&:id).map(&:to_s)
    results = []
    counts = [10, 100, 200, 500, 1000, 2000, 5000]
    
    counts.each do |count|
      time = Benchmark.measure do
        count.times do
          id = ids[rand(ids.size)]
          o = Place.find(id).categories.to_a
        end
      end
      results << { count => time }
    end
    puts results
  end  
  
  desc "case 3"
  task :case03 => :environment do
    category_ids = Category.all.map(&:id).map(&:to_s)
    city_ids = City.all.map(&:id).map(&:to_s)
    results = []
    counts = [10, 100, 200, 500, 1000]#, 2000, 5000]
    
    counts.each do |count|
      time = Benchmark.measure do
        count.times do
          category_id = category_ids[rand(category_ids.size)]
          city_id = city_ids[rand(city_ids.size)]
          # places = Place.joins(:categories).where('categories.id = ?', category_id) & Place.where(:city_id => city_id).to_a
          places = Place.where(:category_ids => category_id, :city_id => city_id).to_a
        end
      end
      results << { count => time }
    end
    puts results
  end  
end


