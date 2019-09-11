class Review < ApplicationRecord
	belongs_to :product
	belongs_to :end_user

	validates :review_content, presence: true
end
