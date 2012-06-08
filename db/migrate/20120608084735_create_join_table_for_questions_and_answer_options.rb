class CreateJoinTableForQuestionsAndAnswerOptions < ActiveRecord::Migration
  def up
    create_table :questions_answer_options do |t|
      t.integer :question_id
      t.integer :answer_option_id
    end
  end

  def down
  end
end
