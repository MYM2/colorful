class DeliveriesController < ApplicationController
  def show
    @end_user = current_end_user
    @deliveries = @end_user.deliveries
               #↑end_userのdeliveriesのデータを持ってくる　モデル名.アソシエーション名で関連するデータを持ってくる
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
    @delivery = Delivery.new(delivery_params)
    @delivery.end_user_id = current_end_user.id
    @delivery.save
    flash[:notice] = 'お届け先住所を追加しました。'
    redirect_to end_user_path(current_end_user.id)
  end

  def update
    # デフォルト住所をフォルスにする
    @delivery = current_end_user.deliveries.find_by(default: :true)
    @delivery.update(default: false)
    # 選択した住所をトゥルーにする
    @delivery_default = Delivery.find(params[:id])
    @delivery_default.default = true
    @delivery_default.update(default: true)
    redirect_to new_order_path
  end

  def delivery_up
    @edit_delivery = Delivery.find(params[:id])
    @edit_delivery.update(delivery_params)
    redirect_to end_user_path(current_end_user.id)
  end



   private
  def delivery_params
    params.require(:delivery).permit(:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :zipcode, :address, :phone_number)
  end
end
