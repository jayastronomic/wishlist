class SessionsController < ApplicationController
 
    def new
     
    end
  
    def create
      # no strong params cause there is no mass assignment
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        redirect_to root_path
        session[:user_id] = @user.id
      else
        redirect_to login_path
      end
    end
  
  
    def destroy
      session.delete(:user_id) # or session[:user_id] = nil
      @current_user = nil
      redirect_to login_path
    end

  end