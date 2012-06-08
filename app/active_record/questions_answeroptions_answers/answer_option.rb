# encoding: utf-8
class AnswerOption < ActiveRecord::Base
  attr_accessible :title
  has_many :questions_answer_options
end
