class EndUsersController < ApplicationController
  before_action :authenticate_end_user!
  def show
  	@end_user = EndUser.find(params[:id])
    @delivery = @end_user.deliveries.page(params[:page]).reverse_order.per(2)
    # 届け先住所のページネーションです
  end

  def edit
  	@end_user = EndUser.find(params[:id])
  end

  def update
  	 @end_user = EndUser.find(params[:id])
  	 if @end_user.update(end_user_params)
       flash[:success] = 'ユーザー情報を編集しました。'
  	   redirect_to end_user_path(@end_user.id)
     else
       flash[:danger] = "ユーザー情報の編集に失敗しました。"
       redirect_to edit_end_user_path
    end
  end

    protected
    def end_user_params
      params.require(:end_user).permit(:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :phone_number, :email)
    end
end
