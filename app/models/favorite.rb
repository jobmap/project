class Favorite < ActiveRecord::Base
  belongs_to :user_id
  belongs_to :al_job_id
end
