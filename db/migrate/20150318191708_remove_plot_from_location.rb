class RemovePlotFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :plot
  end
end
