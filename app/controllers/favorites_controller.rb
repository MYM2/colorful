class FavoritesController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    favorite = current_end_user.favorites.new(product_id: product.id)
    favorite.save
    respond_to do |format|
      format.html { redirect_to product_path(product) }
      format.js
    end
  end

  def destroy
    product = Product.find(params[:product_id])
    favorite = current_end_user.favorites.find_by(product_id: product.id)
    favorite.destroy
    respond_to do |format|
      format.html { redirect_to product_path(product) }
      format.js
    end
  end
end
