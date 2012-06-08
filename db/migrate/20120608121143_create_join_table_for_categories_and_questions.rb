class CreateJoinTableForCategoriesAndQuestions < ActiveRecord::Migration
  def up
    create_table :category_questions do |t|
      t.integer :category_id
      t.integer :question_id
    end
  end

  def down
    drop_table :category_questions
  end
end
