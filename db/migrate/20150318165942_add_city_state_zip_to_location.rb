class AddCityStateZipToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :plot, :string
  end
end
