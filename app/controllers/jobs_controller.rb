class JobsController < ApplicationController

  def show
    @location = Location.find_by(address: params[:search].downcase)
    # @locations = Location.near(params[:search], 5)
      @hash = Gmaps4rails.build_markers(@location) do |location, marker|
        marker.lat location.latitude
        marker.lng location.longitude
      end

    @jobs = @location.jobs.paginate(:page => params[:page], :per_page => 6)
    @zillow = @location.zillow
   # if @location.empty?
   #   redirect_to "/"
   # elsif @location.nil?
   #   redirect_to "/"
   # end
  end
end