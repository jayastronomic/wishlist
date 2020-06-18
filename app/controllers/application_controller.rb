class ApplicationController < ActionController::Base
  #  before_action :get_user
   before_action :auth_user
  helper_method :current_user, :logged_in?, :auth_user



  # def get_user
  #   # @current_user = User.find(session[:user_id])
  #   @current_user = User.find_by(id: session[:user_id])
  # end 
    
  def current_user
    # @current_user ||= User.find_by(id: session[:user_id])
    if session[:user_id]
     @current_user = User.find_by(id: session[:user_id])
    end
  end
  
  def logged_in?
    !current_user.nil?
  end
      
  def auth_user
    if @current_user
      # Continue on into app
    else 
      redirect_to sign_up_path
    end  
  end 

end
