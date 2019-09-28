class Admin::RankingsController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  	@product = Product.find(OrderContent.group(:product_id).order('sum(price_sum_ex_tax) desc').limit(27).pluck(:product_id))
  end
end
