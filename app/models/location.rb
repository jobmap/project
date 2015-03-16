class Location < ActiveRecord::Base

  self.primary_key = 'al_loc_id'

  has_many :jobs, foreign_key: 'al_loc_id'
  has_many :startups, foreign_key: 'al_loc_id'

  geocoded_by :address
  after_validation :geocode 

end
