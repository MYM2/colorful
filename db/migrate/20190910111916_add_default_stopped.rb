class AddDefaultStopped < ActiveRecord::Migration[5.2]
  def change
  	change_column :products, :stopped, :boolean, default: false, null: false
  end
end
