class JobsController < ApplicationController
  before_action :set_job, only: [:edit, :update, :destroy]

  def show
      @jobs = Job.all
      @hash = Gmaps4rails.build_markers(@jobs) do |job, marker|
      marker.lat job.latitude
      marker.lng job.longitude
      marker.infowindow job.title
    end
  end

  def new
    @job = Job.new
  end
 
  def edit
  end

  def create
    @job = Job.create(job_params)
    redirect_to root_url
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:latitude, :longitude, :address)
    end

end
