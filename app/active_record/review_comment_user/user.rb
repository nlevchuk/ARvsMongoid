# encoding: utf-8
class User < ActiveRecord::Base
  attr_accessible :name
  has_many :reviews
end