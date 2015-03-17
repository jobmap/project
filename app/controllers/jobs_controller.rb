class JobsController < ApplicationController

  def show
    @jobs = Job.all
    @location = Location.where(address: params[:search])
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end

    if @location.empty?
      redirect_to "/"
    elsif @location.nil?
      redirect_to "/"
    end
  end
end
