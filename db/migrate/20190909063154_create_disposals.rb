class CreateDisposals < ActiveRecord::Migration[5.2]
  def change
    create_table :disposals do |t|
      t.integer :product_id
      t.integer :scrapped_qty

      t.timestamps
    end
  end
end
