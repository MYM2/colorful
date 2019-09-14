class EndUsersController < ApplicationController
  def show
  	@end_user = EndUser.find(params[:id])
  end

  def edit
  	@end_user = EndUser.find(params[:id])
  end

  def update
  end
end
