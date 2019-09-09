class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :deliveries_address
      t.integer :payment_method
      t.integer :subtotal_ex_tax
      t.integer :subtotal_in_tax
      t.integer :freight
      t.integer :arrival_status

      t.timestamps
    end
  end
end
