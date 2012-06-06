# encoding: utf-8
class Category
  include Mongoid::Document
  field :name

  has_and_belongs_to_many :places
end
