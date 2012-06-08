# encoding: utf-8
class Question < ActiveRecord::Base
  attr_accessible :title
  has_many :questions_answer_options
  has_many :answer_options, :through => :questions_answer_options
end