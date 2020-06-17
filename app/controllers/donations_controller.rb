class DonationsController < ApplicationController

    def new
        @donation = Donation.new
        @user = User.find(params[:user_id])
        @item = Item.find(params[:item_id])
    end

    def create
        donation = Donation.create(donation_params)
        redirect_to user_path(1)
    end

    private 

    def donation_params
        params.require(:donation).permit(
            :amount,
            :user_id,
            :item_id
        )
    end

end