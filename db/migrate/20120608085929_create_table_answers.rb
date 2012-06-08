class CreateTableAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.references :place
      t.references :questions_answer_option
    end
  end

  def down
    drop_table :answers
  end
end
