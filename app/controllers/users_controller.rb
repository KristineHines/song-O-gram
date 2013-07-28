class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
        render users_path
      else
        @errors = @user.errors.full_messages
        render users_path
      end
  end
end
