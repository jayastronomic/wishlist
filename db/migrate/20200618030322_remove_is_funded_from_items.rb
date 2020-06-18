class RemoveIsFundedFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :is_funded, :boolean
  end
end
