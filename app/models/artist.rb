class Artist < ApplicationRecord
	attachment :artist_image
	has_many :products
	validates :artist_name, presence: true
end
