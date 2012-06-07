class User
  include Mongoid::Document
  field :name

  has_many :reviews
end