class Product < ApplicationRecord
	has_many :favorites
	has_many :carts
	has_many :order_contents
	has_many :reviews
	has_many :ariivals
	has_many :disposals
	has_many :discs
	belongs_to :label
	belongs_to :artist
	belongs_to :genre

	attachment :product_image

	validates :product_name, :price, :stopped, presence: true

	accepts_nested_attributes_for :discs, allow_destroy: true
end
