class Disc < ApplicationRecord
	belongs_to :product
	has_many :songs, dependent: :destroy
	validates :disc_number, greater_than_or_equal_to: 1

	accepts_nested_attributes_for :songs, allow_destroy: true

end
