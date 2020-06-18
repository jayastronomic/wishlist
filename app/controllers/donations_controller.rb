class DonationsController < ApplicationController

    def new
        @donation = Donation.new
        @user = User.find(params[:user_id])
        @item = Item.find(params[:item_id])
    end

    def create
        donation = Donation.create(donation_params)
        if donation.valid?
        redirect_to user_path(donation.user)
        else 
            flash[:donation_errors] = donation.errors.full_messages
            redirect_to new_user_item_donation_path
        end
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