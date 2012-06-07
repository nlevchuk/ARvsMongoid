namespace :db do
  desc "populate User, Review, Comment models"
  task :populate_case04 => :environment do
    require 'populator'
    require 'faker'

    [User, Review, Comment].each(&:delete_all)

    10.times do        # Maked User
      user = User.create(:name => Faker::Name.last_name)
      500.times do     # Maked Review
        review = user.reviews.create(:title => Populator.sentences(1),
                                     :description => Populator.sentences(5))
        50.times do    # Maked Comment
          review.comments.create(:title => Populator.sentences(1),
                                 :user_id => user.id)
        end
      end
    end
  end

  desc "populate User, Review, Comment models for embedded relations mongoid"
  task :populate_case04_embedded => :environment do
    require 'populator'
    # require 'faker'

    Review.all.each do |r|
      50.times do    # Maked Comment
        r.comments.create(:title => Populator.sentences(1))
      end
    end
  end
end