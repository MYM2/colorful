class EndUsersController < ApplicationController
  def show
  	@end_user = EndUser.find(params[:id])
  end

  def edit
  	@end_user = EndUser.find(params[:id])
  end

  def update
  	 @end_user = EndUser.find(params[:id])
  	 @end_user.update(end_user_params)
  	 redirect_to end_user_path(@end_user.id)
  end

    protected
    def end_user_params
      params.require(:end_user).permit(:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :zipcode, :address, :phone_number, :email)
    end
end


#空コミット用コメント