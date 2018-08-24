class UsersController < ApplicationController

  before_action :define_user, only: [:edit, :update, :destroy]
  before_action :define_session, only: [:index, :edit, :edit, :update, :destroy]
  before_action :redirect_if_not_logged_in, only: [:index]

  def index

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
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end 

  def define_user
    if (params[:id])
      @user = User.find(params[:id])
    else
      @user = User.new
    end
  end

  def define_session
    @user = User.find(session[:user_id])
  end

end