# encoding: utf-8
class Place
  include Mongoid::Document
  field :address
  has_and_belongs_to_many :categories, :inverse_of => nil, :index => true
  
  belongs_to :city, :index => true
end
