class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.string :name
      t.integer :country_id
    end
  end

  def down
    drop_table :cities
  end
end
