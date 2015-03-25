class FavoritesController < ApplicationController

  def create
    @job = Job.find(params[:id])
    @fav = current_user.jobs<<(@job)
    redirect_to jobs_url(search: params[:search])
  end


end
