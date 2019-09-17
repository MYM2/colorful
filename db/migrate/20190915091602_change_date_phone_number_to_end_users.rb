class ChangeDatePhoneNumberToEndUsers < ActiveRecord::Migration[5.2]
  def change
  		change_column :end_users, :phone_number, :string
  end
end
