class JobsController < ApplicationController

  def show
    @location = Location.find_by(address: params[:search])
    @locations = Location.near(params[:search], 5)
      @hash = Gmaps4rails.build_markers(@locations) do |locations, marker|
        marker.lat locations.latitude
        marker.lng locations.longitude
      end

   if @locations.empty?
     redirect_to "/"
   elsif @locations.nil?
     redirect_to "/"
   end
  end
end