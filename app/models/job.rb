class Job < ActiveRecord::Base

  self.primary_key = 'al_job_id'

  belongs_to :location, foreign_key: 'al_loc_id'
  belongs_to :startup, foreign_key: 'al_start_id'

  validates :al_start_id, uniqueness: true
  markable_as :favorite

end
