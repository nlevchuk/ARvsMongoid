class CreatePlaces < ActiveRecord::Migration
  def up
    create_table :places do |t|
      t.string :address
      t.integer :city_id
    end
  end

  def down
    drop_table :places
  end
end
