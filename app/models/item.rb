class Item < ApplicationRecord
   has_many :donations
   has_many :users, through: :donations
   belongs_to :user
   
  
end