class Admin::DiscsController < ApplicationController

  def destroy
    @disc = Disc.find(params[:id])
    @product = @disc.product
    if @disc.destroy
        flash[:success] = "ディスクを削除"
    end

    redirect_to edit_admin_product_path(@product)
  end

end
