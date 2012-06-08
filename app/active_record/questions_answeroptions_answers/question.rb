# encoding: utf-8
class Question < ActiveRecord::Base
  attr_accessible :title
  has_many :place_question_answers
  has_many :questions, :through => :place_question_answers
  has_many :questions_answer_options
  has_many :answer_options, :through => :questions_answer_options
  has_many :category_questions
  has_many :categories, :through => :category_questions

  def answer
    place_question_answers.first.answer_option# rescue nil
  end

  def answer=(*args)
    question = place_question_answers.first
    question.answer_option_id = args.first.id
    question.save
  end
end