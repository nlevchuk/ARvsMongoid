# encoding: utf-8
class Answer < ActiveRecord::Base
  attr_accessible :questions_answer_option_id
  belongs_to :place
  belongs_to :questions_answer_option
  # belongs_to :question, :through => :questions_answer_option
  # belongs_to :answer_option, :through => :questions_answer_option
end
