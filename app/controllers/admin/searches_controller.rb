class Admin::SearchesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  	@products = Product.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  	@check = params[:q][:product_name_or_artist_artist_name_or_genre_genre_name_cont] #検索ワードを持つ
  end
end
