class FriendshipsController < ApplicationController

    def new
        @user = User.find(params[:user_id])
        @users = User.all
        @friendship = Friendship.new
    end

    def create
       if friendship = Friendship.create(friendship_params)
        flash[:notice] = "You are now friends!"
        redirect_to user_path(friendship.user_two_id)
       else
        render :new
       end
    end

    private

    def friendship_params
        params.require(:friendship).permit(
            :user_one_id,
            :user_two_id
        )
    end
end
