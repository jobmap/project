class RenameAddressColumnInLocation < ActiveRecord::Migration
  def change
    rename_column :locations, :loc_name, :address
  end
end
