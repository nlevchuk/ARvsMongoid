class CreatePlaces < ActiveRecord::Migration
  def up
    create_table :places do |t|
      t.string :name
      t.string :address
    end
  end

  def down
    drop_table :places
  end
end
