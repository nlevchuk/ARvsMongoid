# encoding: utf-8
class Comment < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :review
end