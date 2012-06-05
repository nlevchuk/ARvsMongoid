class Country
  include Mongoid::Document
  field :title

  has_many :cities
end
