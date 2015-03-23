class Zillow < ActiveRecord::Base

  self.primary_key = 'al_loc_id'

  belongs_to :location, foreign_key: 'al_loc_id'

  validates :al_loc_id, uniqueness: true

end
