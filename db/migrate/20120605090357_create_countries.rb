class CreateCountries < ActiveRecord::Migration
  def up
    create_table :countries do |t|
      t.string :name
    end
  end

  def down
    drop_table :countries
  end
end
