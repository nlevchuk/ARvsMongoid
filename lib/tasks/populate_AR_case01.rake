namespace :db do
  desc "populate City, Country, Place models in AR"
  task :populate_case01 => :environment do
    require 'populator'
    require 'faker'

    [City, Country, Place].each(&:delete_all)
  end
end