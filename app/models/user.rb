class User < ApplicationRecord
    has_many :initiated_friendships, class_name: "Friendship", foreign_key: :user_one_id, dependent: :destroy
    has_many :initiated_friends, through: :initiated_friendships, source: :user_two_friend
    has_many :accepted_friendships, class_name: "Friendship", foreign_key: :user_two_id, dependent: :destroy
    has_many :accepted_friends, through: :accepted_friendships, source: :user_one_friend

    has_many :donations
    has_many :items
    has_many :items_donated_to, through: :donations, source: :item

    
    has_secure_password
    validates :username, :first_name, :last_name, :email, :birth_date, presence: true
    validates :username, uniqueness: true
    validates :email, uniqueness: true
   
   

    # def password=(secret)
    #     hash_pass = BCrypt::Password.create(secret)
    #     self.password_digest = hash_pass
    # end

    

    def all_friends
        self.initiated_friends + self.accepted_friends
    end
end

