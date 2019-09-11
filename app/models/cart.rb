class Cart < ApplicationRecord
	belongs_to :product
	belongs_to :end_user
	validates :product_qty, greater_than_or_equal_to: 1
end
