class RenameFavoritesTableToJobsUsers < ActiveRecord::Migration
  def change
    rename_table :favorites, :jobs_users
    remove_column :jobs_users, :id
  end
end
