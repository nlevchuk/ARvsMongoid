namespace :db do
  desc "populate Questions model"
  task :populate_case05_mongo => :environment do
    RATINGS = [1, 2, 3, 4, 5]
    QUESTIONS = ['wifi','toilet','music','smoking','bank card']
    
    [Place.first].map do |place|
      10.times { place.comments.create(:text => Faker::Lorem.sentence, :name => Faker::Name.name) }
      10.times { place.ratings.create(:type => 'cool', :value => RATINGS[rand(RATINGS.size)]) }
      5.times { place.questions.create(:title => QUESTIONS[rand(QUESTIONS.size)], :answer => Faker::Lorem.words(rand(4)+1).join(' ')) }
      place.contacts.create(:type => 'email', :value => Faker::Internet.email )
      place.contacts.create(:type => 'url', :value => Faker::Internet.url)
      place.contacts.create(:type => 'phone', :value => Faker::PhoneNumber.phone_number )
    end
  end
end
