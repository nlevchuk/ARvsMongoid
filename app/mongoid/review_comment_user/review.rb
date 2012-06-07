class Review
  include Mongoid::Document
  field :title
  field :description

  has_many :comments      # ActiveRecord
  # embeds_many :comments     # Mongoid

  belongs_to :user
end