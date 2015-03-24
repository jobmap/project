class UsersController < ApplicationController
  
  def show
    @jobs = Job.find_by_al_loc_id
    @user = User.find_by_id
  end

end
