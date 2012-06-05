class Place
  include Mongoid::Document
  field :title

  belongs_to :cities
end