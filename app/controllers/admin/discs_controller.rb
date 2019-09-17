class Admin::DiscsController < ApplicationController

  def destroy
    @disc = Disc.find(params[:id])
    @product = @disc.product
    if @disc.destroy
      flash[:success] = "ディスクNo." + @disc.disc_number.to_s +  "を削除しました。"
    end

    redirect_to edit_admin_product_path(@product)
  end

end
