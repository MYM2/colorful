class Product < ApplicationRecord
	has_many :favorites
	has_many :carts
	has_many :order_contents
	has_many :reviews
	has_many :arrivals
	has_many :disposals
	has_many :discs
	belongs_to :label
	belongs_to :artist
	belongs_to :genre

	attachment :jacket_image

	validates :product_name, :price, presence: true

	accepts_nested_attributes_for :discs, allow_destroy: true
	# cocoon使用時の記述

	



end
