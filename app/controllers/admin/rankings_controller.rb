class Admin::RankingsController < ApplicationController
  def index
  	@product = Product.find(OrderContent.group(:product_id).order('sum(price_sum_ex_tax) desc').limit(30).pluck(:product_id))
  end
end
