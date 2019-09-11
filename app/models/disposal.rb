class Disposal < ApplicationRecord
	belongs_to :product
	validates :scrapped_qty, greater_than_or_equal_to: 1
end
