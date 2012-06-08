namespace :db do
  desc "populate Questions model"
  task :populate_questions => :environment do

    Question.delete_all
    ['wifi','toilet','music','smoking','bank card'].each do |item|
      Question.create(:title => item)
    end
  end
end