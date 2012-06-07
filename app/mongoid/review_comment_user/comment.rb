class Comment
  include Mongoid::Document
  field :title

  belongs_to :review    # ActiveRecord
  # embedded_in :review     # Mongoid
end