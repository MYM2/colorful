class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.integer :artist_id
      t.string :product_name
      t.integer :price
      t.integer :label_id
      t.boolean :stopped
      t.string :jacket_image

      t.timestamps
    end
    add_index :products, :product_name
  end
end
