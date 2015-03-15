class AddRoleNameAndSkillsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :role_name, :string
    add_column :jobs, :skills_list, :string
  end
end
