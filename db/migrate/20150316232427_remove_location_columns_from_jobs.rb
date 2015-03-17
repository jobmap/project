class RemoveLocationColumnsFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :latitude, :float
    remove_column :jobs, :longitude, :float
    remove_column :jobs, :address, :string
  end
end
