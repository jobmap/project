class Job < ActiveRecord::Base

  self.primary_key = 'al_job_id'

  belongs_to :location, foreign_key: 'al_loc_id'
  
end
