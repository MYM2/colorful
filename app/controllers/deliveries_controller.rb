class DeliveriesController < ApplicationController
  def show
    end_user = current_end_user
    @delivery = end_user.deliveries
               #↑end_userのdeliveriesのデータを持ってくる　モデル名.アソシエーション名で関連するデータを持ってくる
  end

  def edit
    @delivery = Delivery.find(params[:id])
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
    @delivery = Delivery.find(params[:id])
    @delivery.update(delivery_params)
    redirect_to end_user_path(current_end_user.id)
  end

   private
  def delivery_params
    　params.require(:delivery).permit(:lastname_kanji,:firstname_kanji,:lastname_kana,:firstname_kana,:zipcode,:address,:phone_number)
  end
end

