class ChangeDatePhoneZipcodeToDeliveries < ActiveRecord::Migration[5.2]
  def change
  	change_column :deliveries, :zipcode, :string
  end
end
