# encoding: utf-8
class Rating
  include Mongoid::Document
  field :type
  field :value, :type => Integer
  embedded_in :place
end
