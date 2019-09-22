class RemoveLeavedFromEndUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_users, :leaved, :boolean
  end
end
