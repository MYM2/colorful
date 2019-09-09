class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_image
      t.text :artist_introduction

      t.timestamps
    end
     add_index :artists, :artist_name
  end
end
