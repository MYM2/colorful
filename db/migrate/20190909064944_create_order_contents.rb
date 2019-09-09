class CreateOrderContents < ActiveRecord::Migration[5.2]
  def change
    create_table :order_contents do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :product_qty
      t.integer :price_sum_ex_tax
      t.integer :price_sum_in_tax

      t.timestamps
    end
  end
end
