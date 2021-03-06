class ArtistsController < ApplicationController
  def index
  	@artist = Artist.all
  end

  def show
  	@artist = Artist.find(params[:id])
  	@products = @artist.products.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  end
end
