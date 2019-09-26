class CardsController < ApplicationController

  before_action :authenticate_end_user!
  require "payjp"

  def show
    card = Card.where(end_user_id: current_end_user.id).first
    if card.blank?
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
      redirect_to cards_show_path(current_end_user.id)
    end
  end

  def pay #payjpとCardのデータベース作成を実施します。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params[:payjpToken].blank?
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
      else
        redirect_to cards_new_path
      end
    end
  end

end
