class JobsController < ApplicationController

  def show
      @location = Location.last
      @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  private

    def job_params
      params.require(:job).permit(:latitude, :longitude, :address)
    end

end
