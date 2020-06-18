class Item < ApplicationRecord
   has_many :donations
   has_many :users, through: :donations
   belongs_to :user
   
   validates :name, :price, :description, :img_url, presence: true

   
end