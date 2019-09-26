class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :end_user_id
      t.string :customer_id
      t.string :card_id

      t.timestamps
    end
  end
end
