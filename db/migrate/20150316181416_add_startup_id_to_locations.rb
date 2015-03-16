class AddStartupIdToLocations < ActiveRecord::Migration
  def change

    add_column :locations, :al_start_id, :integer

  end
end
