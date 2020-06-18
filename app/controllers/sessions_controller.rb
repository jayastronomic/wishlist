class SessionsController < ApplicationController
   skip_before_action :auth_user, only: [:new, :create]
 
  def new
    # don't need anything in here, cause we're not setting up a
    # blank model to couple with the form
  end
  
  def create
    # no strong params cause there is no mass assignment
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash[:error] = "Username or Password is Incorrect"
      redirect_to login_path
    end
    
  end
  
  def destroy
    # session[:id] = nil 
    session.delete(:user_id)
    redirect_to login_path
  end 

  end