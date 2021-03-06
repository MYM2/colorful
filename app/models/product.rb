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

  def favorited_by?(end_user) #いいねしているかどうか
    favorites.where(end_user_id: end_user.id).exists?
  end	

  def getqty(product)
    arrivals = product.arrivals
    @arrival = arrivals.all.sum(:received_qty)
    disposal = product.disposals
    @disposal = disposal.all.sum(:scrapped_qty)
    order_content = product.order_contents
    @order_content = order_content.all.sum(:product_qty)
    @stock = @arrival - @disposal - @order_content
  end


end
