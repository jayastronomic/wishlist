class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.string :description
      t.integer :price
      t.boolean :is_funded
      t.integer :user_id
    end
  end
end
