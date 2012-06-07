# encoding: utf-8
class Review < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :comments
  belongs_to :user
end