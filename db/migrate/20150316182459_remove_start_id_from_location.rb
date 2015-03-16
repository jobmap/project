class RemoveStartIdFromLocation < ActiveRecord::Migration
  def change

    remove_column :locations, :al_start_id

    add_column :startups, :al_loc_id, :integer

  end
end
