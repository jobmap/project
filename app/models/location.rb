class Location < ActiveRecord::Base

  self.primary_key = 'al_loc_id'
  
  has_many :jobs, foreign_key: 'al_loc_id'

end
