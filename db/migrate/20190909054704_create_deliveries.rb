class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.integer :end_user_id
      t.string :lastname_kanji
      t.string :firstname_kanji
      t.string :lastname_kana
      t.string :firstname_kana
      t.integer :phone_number
      t.integer :zipcode
      t.string :address

      t.timestamps
    end
  end
end
