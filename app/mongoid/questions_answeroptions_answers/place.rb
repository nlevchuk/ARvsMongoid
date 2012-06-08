# encoding: utf-8
class Place
  include Mongoid::Document
  field :address

  has_and_belongs_to_many :categories, :inverse_of => nil, :index => true
  embeds_many :questions
  embeds_many :contacts
  embeds_many :ratings
  embeds_many :comments
  index "contacts.type" => 1
  index "contacts.value" => 1
end
