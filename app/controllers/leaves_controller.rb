class LeavesController < ApplicationController
	before_action :authenticate_end_user!
  def show
  	@end_user = EndUser.find(params[:id])
  end

  def destroy
    @end_user = EndUser.find(params[:id])
    if @end_user.destroy
      flash[:success] = '退会手続きが完了いたしました。またのご利用をお待ちしております。'
      redirect_to products_path
    end
  end
end