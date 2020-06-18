class AddIsFundedToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :is_funded, :boolean, default: false
  end
end
