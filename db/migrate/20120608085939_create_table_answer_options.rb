class CreateTableAnswerOptions < ActiveRecord::Migration
  def up
    create_table :answer_options do |t|
      t.string :title
    end
  end

  def down
    drop_table :answer_options
  end
end
