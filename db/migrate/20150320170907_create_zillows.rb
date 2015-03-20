class CreateZillows < ActiveRecord::Migration
  def change
    create_table :zillows do |t|
      t.integer :al_loc_id
      t.integer :med_house_income
      t.integer :med_nat_house_income
      t.integer :zillow_HVI
      t.integer :zillow_nat_HVI
      t.float :avg_commute_time
      t.float :avg_nat_commute_time
      t.string :education
      t.string :people_culture
      t.string :transportation

      t.timestamps null: false
    end
  end
end
