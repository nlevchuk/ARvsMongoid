# encoding: utf-8
class Contact
  include Mongoid::Document
  field :type
  field :value
  field :note
  embedded_in :place
end
