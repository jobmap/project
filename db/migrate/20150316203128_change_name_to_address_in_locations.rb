class ChangeNameToAddressInLocations < ActiveRecord::Migration
  def change

    rename_column :locations, :name, :address

  end
end
