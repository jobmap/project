class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :user_id, index: true
      t.references :al_job_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :favorites, :user_ids
    add_foreign_key :favorites, :al_job_ids
  end
end
