class Order < ApplicationRecord
	belongs_to :end_user
	has_many :order_contents

	accepts_nested_attributes_for :order_contents, allow_destroy: true
end

