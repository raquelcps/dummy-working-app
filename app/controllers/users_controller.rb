class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
     @user = User.new
     @image = @user.images.build
  end

  def create
    user = User.create({:first_name => params[:first_name], :last_name => params[:last_name]} )
  end

end
