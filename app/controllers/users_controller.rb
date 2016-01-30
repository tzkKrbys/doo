class UsersController < ApplicationController
  def show
    @user = User.includes(:interests, :tags, :empathies).find(params[:id])
  end
end
