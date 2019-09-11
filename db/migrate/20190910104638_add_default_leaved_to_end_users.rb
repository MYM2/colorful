class AddDefaultLeavedToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_users, :leaved, :boolean, default: false, null: false
  end
end
