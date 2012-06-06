class Place
  include Mongoid::Document
  field :address

  belongs_to :cities
end