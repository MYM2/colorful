class Admin::DisposalsController < ApplicationController

	def create
		disposal = Disposal.new(disposal_params)
	  	disposal.save
	  	flash[:success] = '廃棄情報を登録しました'
	  	redirect_to admin_product_path(disposal.product_id)
	end
  private
  def disposal_params
  	params.require(:disposal).permit(:product_id, :scrapped_qty)
  end
end
