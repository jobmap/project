class AddIndexUniqueToJobs < ActiveRecord::Migration
  def change
    add_index :jobs, :al_start_id, unique: true
  end
end
