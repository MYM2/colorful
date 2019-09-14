class Song < ApplicationRecord
	belongs_to :disc


	validates :song_name, presence: true
	validates :track_number, greater_than_or_equal_to: 1
end
