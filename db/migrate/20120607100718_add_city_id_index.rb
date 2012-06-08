class AddCityIdIndex < ActiveRecord::Migration
  def up
    add_index :places, :city_id, :name => 'index_city_for_place'
  end

  def down
    remove_index :places, :index_city_for_place
  end
end
