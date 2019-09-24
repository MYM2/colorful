class LeavesController < ApplicationController
	before_action :authenticate_end_user!
  def show
  	@end_user = EndUser.find(params[:id])
  end

  def update
  	@end_user = EndUser.find(params[:id])
  	@end_user.update(leaved: true)
  	# leavedカラムをtrueに更新する
  	redirect_to products_path
  end
end