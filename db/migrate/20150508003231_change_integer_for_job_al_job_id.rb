class ChangeIntegerForJobAlJobId < ActiveRecord::Migration
  def change
    change_column :jobs, :al_job_id, :integer, limit: 8
  end
end
