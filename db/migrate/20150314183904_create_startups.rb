class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :al_url
      t.boolean :community_profile
      t.string :url
      t.datetime :al_created_at
      t.integer :follower_count
      t.boolean :hidden
      t.string :high_concept
      t.integer :al_start_id
      t.string :logo_url
      t.string :name
      t.string :prod_desc
      t.integer :quality
      t.string :thumb_url
      t.datetime :al_updated_at

      t.timestamps null: false
    end
  end
end
