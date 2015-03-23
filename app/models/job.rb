class Job < ActiveRecord::Base

  self.primary_key = 'al_job_id'

  belongs_to :location, foreign_key: 'al_loc_id'
  belongs_to :startup, foreign_key: 'al_start_id'
  has_many   :favorites, :dependent => :destroy
  has_many   :favorited, :through => :favorites, :source => :user

  validates :al_start_id, uniqueness: true

end
