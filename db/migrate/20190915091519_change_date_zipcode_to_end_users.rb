class ChangeDateZipcodeToEndUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column :end_users, :zipcode, :string
  end
end
