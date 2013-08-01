class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
        redirect_to @user
      else
        @errors = @user.errors.full_messages
        render new_user_path
      end
  end

  def edit
    p params
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end
end
