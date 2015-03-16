class RemoveLocationFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :location
  end
end
