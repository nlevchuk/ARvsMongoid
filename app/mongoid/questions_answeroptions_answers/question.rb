# encoding: utf-8
class Question
  include Mongoid::Document
  field :title
  field :answer
  embedded_in :place
end
