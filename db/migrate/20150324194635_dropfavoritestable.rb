class Dropfavoritestable < ActiveRecord::Migration
  def change
    drop_table :favorites
    drop_table :marks
  end
end
