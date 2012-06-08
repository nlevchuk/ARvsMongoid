# encoding: utf-8
class City < ActiveRecord::Base
  attr_accessible :name

  has_many :places
  belongs_to :country
end