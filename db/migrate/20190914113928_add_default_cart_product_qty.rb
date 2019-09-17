class AddDefaultCartProductQty < ActiveRecord::Migration[5.2]
  def change
    change_column :carts, :product_qty, :integer, default: 1, null: false
  end
end
