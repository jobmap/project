class JobsController < ApplicationController

  def show
    @location = Location.find_by(address: params[:search].downcase)
      @hash = Gmaps4rails.build_markers(@location) do |location, marker|
        marker.lat location.latitude
        marker.lng location.longitude
      end

    if @location 
      @jobs = @location.jobs.paginate(:page => params[:page], :per_page => 6) 
      @zillow = @location.zillow
    else
      flash[:notice] = "No Startups were found in #{params[:search]}. Please try your search again."
      redirect_to(:back)
    end
   
  end

end