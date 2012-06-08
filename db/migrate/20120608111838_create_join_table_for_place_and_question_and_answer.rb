class CreateJoinTableForPlaceAndQuestionAndAnswer < ActiveRecord::Migration
  def up
    create_table :place_question_answers do |t|
      t.integer :place_id
      t.integer :question_id
      t.integer :answer_option_id
    end
  end

  def down
    drop_table :place_question_answers
  end
end
