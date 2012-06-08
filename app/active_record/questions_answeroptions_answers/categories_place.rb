class CategoriesPlace < ActiveRecord::Base
  attr_accessible :place_id, :category_id
  belongs_to :category
  belongs_to :place
  has_many :questions
end
