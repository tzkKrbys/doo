class UsersController < ApplicationController
  def show
    @user = User.includes(:interests).find(params[:id])
  end
end
