class ChangeDatePhoneNumberToDeliveries < ActiveRecord::Migration[5.2]
  def change
  	change_column :deliveries, :phone_number, :string
  end
end
