class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.integer :end_user_id
      t.string :inquirer_name
      t.string :mail
      t.text :inquiry_content

      t.timestamps
    end
  end
end
