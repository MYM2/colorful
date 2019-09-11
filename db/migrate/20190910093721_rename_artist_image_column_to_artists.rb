class RenameArtistImageColumnToArtists < ActiveRecord::Migration[5.2]
  def change
  	rename_column :artists, :artist_image, :artist_image_id
  end
end
