# encoding: utf-8
class Place
  include Mongoid::Document
  field :name

  has_and_belongs_to_many :categories  
end
