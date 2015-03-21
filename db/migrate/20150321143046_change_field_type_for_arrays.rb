class ChangeFieldTypeForArrays < ActiveRecord::Migration
  def change
    change_column :zillows, :education, :text
    change_column :zillows, :people_culture, :text
    change_column :zillows, :transportation, :text
  end
end
