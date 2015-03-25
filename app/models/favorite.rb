class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :job, foreign_key: 'al_job_id'
end
