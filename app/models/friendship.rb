class Friendship < ApplicationRecord
     belongs_to :user_one_friend, class_name: "User", foreign_key: :user_one_id
     belongs_to :user_two_friend, class_name: "User", foreign_key: :user_two_id
 end