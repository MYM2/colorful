class AddDefaultArrivalStatus < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders, :arrival_status, :integer, default: 0, null: false
  end
end
