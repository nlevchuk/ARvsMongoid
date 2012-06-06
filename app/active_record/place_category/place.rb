# encoding: utf-8
class Place < ActiveRecord::Base
  attr_accessible :address
  has_and_belongs_to_many :categories
end
