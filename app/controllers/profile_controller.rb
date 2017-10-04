class ProfileController < ApplicationController
  def index
    @user = current_user
    @following = current_user.all_following
    @followers = current_user.followers
    @matches = @following & @followers
  end

  def show
    @user = User.find_by id: params[:id]
  end
end
