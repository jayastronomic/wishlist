class ItemsController < ApplicationController

    def index
        @items = Item.all
    end


    def new
        @item = Item.new
        @user = User.find(params[:user_id])
    end

    def create
        item = Item.create(item_params)
        redirect_to user_path(item.user.id)
        # suppose to redirect to user show page and shows their items.
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