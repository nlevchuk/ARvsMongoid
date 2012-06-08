# encoding: utf-8
class QuestionsAnswerOption < ActiveRecord::Base
  has_one :answer
  belongs_to :question
  belongs_to :answer_option
end
