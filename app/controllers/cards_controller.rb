class CardsController < ApplicationController

  before_action :authenticate_end_user!
  require "payjp"

  def show
    card = Card.where(end_user_id: current_end_user.id).first
    if card.blank?
      flash[:notice] = "カード情報がありません。"
      redirect_to cards_new_path
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def new
    card = Card.where(end_user_id: current_end_user.id)
    if card.exists?
      flash[:notice] = "カード登録は１枚まで可能です。"
      redirect_to cards_show_path(current_end_user.id)
    end
  end

  def pay #payjpとCardのデータベース作成を実施します。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params[:payjpToken].blank?
      flash[:danger] = "カード情報の登録に失敗しました。"
      redirect_to cards_new_path
    else
      customer = Payjp::Customer.create(
      description: '登録テスト', #なくてもOK
      email: current_end_user.email, #なくてもOK
      card: params[:payjpToken],
      metadata: {end_user_id: current_end_user.id} #なくてもOK
      )
      @card = Card.new(end_user_id: current_end_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to end_user_path(current_end_user.id)
        flash[:success] = "カード情報を登録しました。"
      else
        flash[:danger] = "カード情報の登録に失敗しました。"
        redirect_to cards_new_path
      end
    end
  end

  def delete
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    card = Card.where(end_user_id: current_end_user.id).first
    customer = Payjp::Customer.retrieve(card.customer_id)
    customer.delete
    if card.destroy
        flash[:success] = "カード情報を登録しました。"
        redirect_to end_user_path(current_end_user.id)
    else
        flash[:danger] = "カード情報を削除できませんでした。"
      redirect_to cards_show_path(current_end_user.id)
    end
  end

end
