class Admin::SongsController < ApplicationController

  def destroy
    @song = Song.find(params[:id])
    @disc = @song.disc
    @product = @disc.product
    if @song.destroy
        flash[:success] = "曲を削除"
    end

    redirect_to edit_admin_product_path(@product)
  end

end
