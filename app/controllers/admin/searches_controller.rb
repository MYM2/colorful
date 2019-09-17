class Admin::SearchesController < ApplicationController
  def index
  	@products = Product.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  end
end
