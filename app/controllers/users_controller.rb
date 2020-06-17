class UsersController < ApplicationController
    # skip_before_action :auth_user, only: [:new, :create]

    def index
        @users = User.all
    end


    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to users_path
    end

    def show
        @user = User.find_by_id(params[:id])
        @users = User.all
    end

    def edit
        @user = User.find_by_id(params[:id])
    end

    def update
        user = User.update(user_params)
        redirect_to user_path(user)
    end


    private

    def user_params 
        params.require(:user).permit(
            :username,
            :first_name,
            :last_name,
            :email,
            :birth_date,
            :password
        )
    end

    
end