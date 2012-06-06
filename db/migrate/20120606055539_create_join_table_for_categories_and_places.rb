class CreateJoinTableForCategoriesAndPlaces < ActiveRecord::Migration
  def self.up
    create_table :categories_places, :id => false do |t|
      t.integer :place_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :categories_places
  end
end
