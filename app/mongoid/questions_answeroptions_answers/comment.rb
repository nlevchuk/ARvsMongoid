# encoding: utf-8
class Comment
  include Mongoid::Document
  field :text
  field :user
  embedded_in :place
end
