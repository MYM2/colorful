class Order < ApplicationRecord
	belongs_to :end_user
	has_many :order_contents
end

