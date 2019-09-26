class DeliveriesController < ApplicationController
  before_action :authenticate_end_user!
  def show
    @end_user = current_end_user
    @deliveries = @end_user.deliveries
               #↑end_userのdeliveriesのデータを持ってくる　モデル名.アソシエーション名で関連するデータを持ってくる
    @delivery = Delivery.new
  end

  def edit
    @edit_delivery = Delivery.find(params[:id])
  end

  def new
    @delivery = Delivery.new
  end

  def destroy
    @delivery = Delivery.find(params[:id])
    @delivery.destroy
    redirect_to end_user_path(current_end_user.id)
  end

  def create
  # 前ページのURLによって処理を変更している
    @delivery = Delivery.new(delivery_params)
    @delivery.end_user_id = current_end_user.id
    # refererは前ページのURLを取得するメソッド
    if request.referer&.include?("/localhost:3000/deliveries/new")
      if @delivery.save
        flash[:success] = 'お届け先情報を追加しました。'
        redirect_to end_user_path(current_end_user.id)
      else
        flash[:danger] = "お届け先情報の追加に失敗しました。"
        redirect_to new_delivery_path
      end
    else
      if @delivery.save
        flash[:success] = 'お届け先情報を追加しました。'
        redirect_to delivery_path(current_end_user.id)
      else
        flash[:danger] = "お届け先情報の追加に失敗しました。"
        redirect_to delivery_path(current_end_user.id)
      end
    end

  end

  def update
    # デフォルト住所をフォルスにする
    @delivery = current_end_user.deliveries.find_by(default: :true)
    if @delivery != nil
       @delivery.update(default: false)
    end
    # 選択した住所をトゥルーにする
    @delivery_default = Delivery.find(params[:id])
    if @delivery_default.update(default: true)
      flash[:success] = 'お届け先情報を変更しました。'
      redirect_to new_order_path
    end
  end

    # お届け先住所編集用のアクション
  def delivery_up
    @edit_delivery = Delivery.find(params[:id])
    if @edit_delivery.update(delivery_params)
      flash[:success] = 'お届け先情報を編集しました。'
      redirect_to end_user_path(current_end_user.id)
    else
      flash[:danger] = "お届け先情報の編集に失敗しました。"
      redirect_to edit_delivery_path
    end
  end

  private
  def delivery_params
    params.require(:delivery).permit(:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :zipcode, :address, :phone_number)
  end
end
