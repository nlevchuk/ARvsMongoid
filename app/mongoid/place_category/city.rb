class City
  include Mongoid::Document
  field :name

  has_many :places
  belongs_to :country
end