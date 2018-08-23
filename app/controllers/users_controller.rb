class UsersController < ApplicationController

  before_action :define_user, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_not_logged_in, only: [:index]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create

    user = User.new(user_params)
    unless user.valid?
      flash[:error] = user.errors.full_messages.join('; ')
      redirect_to signup_path
    else
      user.save
      session[:user_id] = user.id
      redirect_to users_path
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      redirect_to users_path
    else
      redirect_to edit_user_path
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end 

  def define_user
    @user = User.find(params[:id])
  end

end