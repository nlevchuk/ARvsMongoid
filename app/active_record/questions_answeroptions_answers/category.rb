# encoding: utf-8
class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :categories_places
  has_many :places, :through => :categories_places
  has_many :questions, :through => :categories_places
  # has_and_belongs_to_many :questions
end
