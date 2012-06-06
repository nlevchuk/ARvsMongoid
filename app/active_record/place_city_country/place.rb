# encoding: utf-8
class Place < ActiveRecord::Base
  attr_accessible :address

  belongs_to :city
end