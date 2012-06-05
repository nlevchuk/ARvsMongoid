# encoding: utf-8
class City < ActiveRecord::Base
  has_many :places
  belongs_to :country
end