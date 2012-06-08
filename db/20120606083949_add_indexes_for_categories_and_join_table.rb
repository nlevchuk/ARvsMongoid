class AddIndexesForCategoriesAndJoinTable < ActiveRecord::Migration
  def up
    add_index :categories_places, [ :category_id, :place_id ], :unique => true, :name => 'index_categories_and_places'
  end

  def down
    remove_index :categories_places, :index_categories_and_places
  end
end
