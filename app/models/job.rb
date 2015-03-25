class Job < ActiveRecord::Base

  self.primary_key = 'al_job_id'

  belongs_to :location, foreign_key: 'al_loc_id'
  belongs_to :startup, foreign_key: 'al_start_id'

  has_and_belongs_to_many :users

  validates :al_start_id, uniqueness: true

end
