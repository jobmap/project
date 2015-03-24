class Droptablefavorites < ActiveRecord::Migration
  def change
    drop_table :favorites
  end
end
