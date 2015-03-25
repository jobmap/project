class FavoritesController < ApplicationController

  def create
    @fav = Favorite.create(al_job_id: , user_id: current_user 
  end


end
