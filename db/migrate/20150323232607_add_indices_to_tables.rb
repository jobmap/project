class AddIndicesToTables < ActiveRecord::Migration
  def change
    add_index :jobs, :al_job_id, unique: true
    add_index :locations, :al_loc_id, unique: true
    add_index :startups, :al_start_id, unique: true
    add_index :zillows, :al_loc_id, unique: true
  end
end
