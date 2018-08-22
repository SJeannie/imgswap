class ApplicationController < ActionController::Base

  def redirect_if_not_logged_in
    if !session[:user_id]
      redirect_to login_path
    end
  end 

end
