class SessionsController < ApplicationController
  
  def new
  end

  def create
    #find the user with that username
    user = User.find_by(username: params[:username])

    #check if the pw is legit 
    if user && user.authenticate(params[:password]) 
      session[:user_id] = user.id 
      redirect_to users_path
    else
      flash[:error] = 'incorrect username or password'
      redirect_to login_path
    end 
  end

  def destroy 
      session[:user_id] = nil 
      session.delete(:user_id)
      redirect_to login_path 
  end 

end
