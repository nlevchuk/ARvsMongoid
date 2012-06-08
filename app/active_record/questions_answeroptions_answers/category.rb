# encoding: utf-8
class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :categories_places
  has_many :places, :through => :categories_places
  has_many :questions, :through => :categories_places
  has_many :category_questions
  has_many :questions, :through => :category_questions
end
