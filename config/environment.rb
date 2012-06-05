# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Arvsmongo::Application.initialize!

config.load_paths << "#{RAILS_ROOT}/mongoid/place_city"
# config.load_paths << "#{RAILS_ROOT}/mongoid/place_category"
# config.load_paths << "#{RAILS_ROOT}/mongoid/place_user_review"
# config.load_paths << "#{RAILS_ROOT}/mongoid/review_comments"
