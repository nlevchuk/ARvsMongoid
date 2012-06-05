class City
  include Mongoid::Document
  field :title

  has_many :places
  belongs_to :country
end