# encoding: utf-8
class Place < ActiveRecord::Base
  attr_accessible :address
  has_many :answers
end
