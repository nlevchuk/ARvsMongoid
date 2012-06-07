class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.integer :user_id
    end
  end

  def down
    drop_table :reviews
  end
end
