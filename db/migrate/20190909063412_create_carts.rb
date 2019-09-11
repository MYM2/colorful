class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :end_user_id
      t.integer :product_id
      t.integer :product_qty

      t.timestamps
    end
  end
end