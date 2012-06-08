# encoding: utf-8
class Place < ActiveRecord::Base
  attr_accessible :address
  has_many :place_question_answers
  has_many :questions, :through => :place_question_answers
end
