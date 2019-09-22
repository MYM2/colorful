class RemoveAddressFromEndUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :end_users, :address, :string
    remove_column :end_users, :zipcode, :string
  end
end
