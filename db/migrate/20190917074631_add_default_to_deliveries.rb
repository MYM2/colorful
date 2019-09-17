class AddDefaultToDeliveries < ActiveRecord::Migration[5.2]
  def change
    add_column :deliveries, :default, :boolean, default: false, null: false
  end
end
