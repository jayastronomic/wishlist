module SessionsHelper

    def current_user
      if session[:user_id]
        User.find_by(id: session[:user_id])
      end
    end
  
    def signed_in?
      !!current_user
    end
  
    #def is_current_user?(user_obj)
      #current_user.id == user_obj.id
   
  end