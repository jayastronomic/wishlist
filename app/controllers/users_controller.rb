class UsersController < ApplicationController
skip_before_action :auth_user, only: [:new, :create]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
       @user = User.new(user_params)
        if @user.valid? 
            @user.save
            redirect_to root_path
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to sign_up_path
        end
    end

    def show
        @user = User.find(params[:id])

        if @user == @current_user
            render :show
        else
            flash[:error] = "can only view your own profile page" 
            redirect_to user_path(@current_user)
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
            :password,
            :password_confirmation
        )
    end




end