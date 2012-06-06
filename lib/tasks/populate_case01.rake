namespace :db do
  desc "populate City, Country, Place models for AR"
  task :populate_case01 => :environment do
    # require 'populator'
    require 'faker'

    [City, Country, Place].each(&:delete_all)

    5.times do        # Maked Country
      country = Country.create(:name => Faker::Address.country)
      20.times do     # Maked City
        city = country.cities.create(:name => Faker::Address.city)
        5000.times do
          city.places.create(:address => Faker::Address.street_address)
        end
      end
    end
  end
end