class ApplicationController < ActionController::Base
    # before_action :get_current_user
    # before_action :authorized
    helper_method :logged_in?
    helper_method :current_user

    # def get_current_user
    #     @current_user = User.find_by_id(session[:user_id])
    # end

    def auth_user
        if @current_user
            redirect_to root_path
        else
            redirect_to new_user_path
        end
    end

   

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
      
      def logged_in?
        !current_user.nil?
      end

      def authorized
        redirect_to login_path unless logged_in?
      end
      


end
