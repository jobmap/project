class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :al_url
      t.string :display_name
      t.integer :al_role_id
      t.string :name

      t.timestamps null: false
    end
  end
end
