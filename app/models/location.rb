class Location < ActiveRecord::Base

  self.primary_key = 'al_loc_id'

  has_many :jobs, foreign_key: 'al_loc_id'
  has_many :startups, foreign_key: 'al_loc_id'

  geocoded_by :address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude do |obj,results|
    if geo = results.first
      obj.city = geo.city
      obj.state = geo.state_code
      obj.zipcode = geo.postal_code
    end
  end
  after_validation :reverse_geocode

end
