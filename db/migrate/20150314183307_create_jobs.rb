class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :al_url
      t.datetime :al_created_at
      t.string :currency_code
      t.string :description
      t.string :equity_cliff
      t.string :equity_max
      t.string :equity_min
      t.string :equity_vest
      t.integer :al_job_id
      t.string :job_type
      t.boolean :remote_ok
      t.integer :salary_max
      t.integer :salary_min
      t.string :skilltag_display_names
      t.integer :al_start_id
      t.integer :al_loc_id
      t.string :title
      t.datetime :al_updated_at

      t.timestamps null: false
    end
  end
end
