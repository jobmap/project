class JobsController < ApplicationController

 def show
  @locations = Location.near(params[:search], 25)
   @hash = Gmaps4rails.build_markers(@locations) do |locations, marker|
     marker.lat locations.latitude
     marker.lng locations.longitude
   end

 #   if @locations.empty?
 #     redirect_to "/"
 #   elsif @locations.nil?
 #     redirect_to "/"
 #   end
  end
end