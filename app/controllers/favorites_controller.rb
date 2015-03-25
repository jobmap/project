class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def show
    @favorites = current_user.jobs.paginate(:page => params[:page], :per_page => 6)
  end

  def create
     @job = Job.find(params[:id])
    if current_user.jobs<<(@job)
      redirect_to jobs_url(search: params[:search]), notice: 'Job has been favorited'
    else
      redirect_to jobs_url(search: params[:search]), notice: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    @favorites = current_user.jobs
    @job = Job.find(params[:id])
    @favorites.destroy(@job)
    redirect_to favorites_url, notice: 'Project is no longer in favorites'
  end


end
