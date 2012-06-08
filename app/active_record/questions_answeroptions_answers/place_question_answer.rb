# encoding: utf-8
class PlaceQuestionAnswer < ActiveRecord::Base
  attr_accessible :answer_option_id
  belongs_to :place
  belongs_to :question
  belongs_to :answer_option
end
