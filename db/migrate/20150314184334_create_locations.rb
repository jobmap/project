class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :al_url
      t.string :display_name
      t.integer :al_loc_id
      t.string :name

      t.timestamps null: false
    end
  end
end
