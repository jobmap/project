class Startup < ActiveRecord::Base

  self.primary_key = 'al_start_id'

  belongs_to :location, foreign_key: 'al_loc_id'
  has_many :jobs, foreign_key: 'al_start_id'

end
