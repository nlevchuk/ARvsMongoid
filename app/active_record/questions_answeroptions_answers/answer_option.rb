# encoding: utf-8
class AnswerOption < ActiveRecord::Base
  attr_accessible :title
  has_many :questions_answer_options
  has_one :place_question_answer
end
