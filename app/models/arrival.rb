class Arrival < ApplicationRecord
	belongs_to :product
	validates :received_qty, numericality: {greater_than_or_equal_to: 1}
end

