class Country
  include Mongoid::Document
  field :name

  has_many :cities
end
