class ItemsController < ApplicationController
skip_before_action :auth_user
    def index
        @items = Item.all
    end


    def new
        @item = Item.new
        @user = User.find(params[:user_id])
    end

    def create
        item = Item.create(item_params)
        if item.valid?
        redirect_to user_path(item.user.id)
        else
            flash[:item_errors] = item.errors.full_messages
            redirect_to new_user_item_path
        end
        # suppose to redirect to user show page and shows their items.
    end

    def destroy
        @item = Item.find(params[:id])
        @item.delete
        redirect_to user_path(params[:user_id])
    end


    private

    def item_params
        params.require(:item).permit(
            :name,
            :img_url,
            :description,
            :price,
            :user_id
        )
    end

end