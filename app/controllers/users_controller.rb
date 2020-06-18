class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:new, :create]


    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
       user = User.new(user_params)
        if user.valid? 
            user.save
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
        if session[:user_id]
        @current_user = User.find(session[:user_id])
        end
    end

    def edit
        @user = User.find_by_id(params[:id])
    end

    def update
        current_user = User.update(user_params)
        redirect_to user_path(current_user)
    end


    private

    def user_params 
        params.require(:user).permit(
            :username,
            :first_name,
            :last_name,
            :email,
            :birth_date,
            :password,
            :password_confirmation
        )
    end




end