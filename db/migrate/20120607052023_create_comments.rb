class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.string :title
      t.integer :review_id
      t.integer :user_id
    end
  end

  def down
    drop_table :comments
  end
end
