class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :user_one_id
      t.integer :user_two_id
    end
  end
end
