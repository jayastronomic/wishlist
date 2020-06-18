
class Donation < ApplicationRecord
    belongs_to :item
    belongs_to :user

    validates :amount, presence: true

    def self.donation_sum(array)
        x = array.map {|donation| donation.amount}
        x.sum
    end
  
end

