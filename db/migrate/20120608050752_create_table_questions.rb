class CreateTableQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :title
    end
  end

  def down
    drop_table :questions
  end
end
