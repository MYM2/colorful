class Admin::SongsController < ApplicationController

  def destroy
    @song = Song.find(params[:id])
    @disc = @song.disc
    @product = @disc.product
    if @song.destroy
      flash[:success] = "ディスクNo." + @disc.disc_number.to_s + "のトラックNo" + @song.track_number.to_s + "." + @song.song_name +  "を削除しました。"
    end

    redirect_to edit_admin_product_path(@product)
  end

end
