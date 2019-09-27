class OrdersController < ApplicationController

  before_action :authenticate_end_user!

  def show
    @end_user = current_end_user
    @orders = @end_user.orders.includes(:order_contents).page(params[:page]).reverse_order.per(5)
  end

  def new
    @end_user = current_end_user
    # カートの中身
    @carts = @end_user.carts.includes(:product)
    @freight = Colorful::Application.config.Freight

    # オーダー関係オブジェクト
    @order = Order.new
    @carts.length.times {@order.order_contents.build}

    @delivery = @end_user.deliveries.find_by(default: :true)
    # カード情報
    card = Card.where(end_user_id: current_end_user.id).first
    if card.blank?
      #
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end

    # カート内合計金額
    @carts_total = @end_user.carts.includes(:product)
    @total_price = 0
    @total_price_in_tax = 0
      @carts_total.each do |cart|
        @total_price += cart.product.price * cart.product_qty
        @total_price_in_tax += (cart.product.price * Colorful::Application.config.InTax).floor * cart.product_qty
      end
  end

  def create
    # オーダー関係オブジェクト
    @order = Order.new(order_params)
    @end_user = current_end_user
    @order.end_user_id = current_end_user.id
      if @order.save
        flash[:success] = "注文を受け付けました。お買い上げありがとうございます。"
        #カート内の削除
        @carts = @end_user.carts
          @carts.each do |cart|
            cart.destroy
          end

        if @order.payment_method == 0
          card = Card.where(end_user_id: current_end_user.id).first
          Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
          customer = Payjp::Customer.retrieve(card.customer_id)
          @default_card_information = customer.cards.retrieve(card.card_id)
          Payjp::Charge.create(currency: 'jpy', amount: @order.subtotal_in_tax, customer: customer)
        end
        redirect_to products_path
      else
        flash[:danger] = "注文に失敗しました。"
        redirect_to products_path
      end

  end

  private
    def order_params
      params.require(:order).permit(:deliveries_address, :payment_method, :subtotal_ex_tax, :subtotal_in_tax, :freight, :arrival_status,
                                    order_contents_attributes: [:id, :product_id, :product_qty, :price_sum_ex_tax, :price_sum_in_tax])
    end


    # def order_params
    #   params.require(:order).permit(:deliveries_address, :payment_method, :subtotal_ex_tax, :subtotal_in_tax, :freight, :arrival_status, :cart => [:id],
    #                                 order_contents_attributes: [:id, :product_id, :product_qty, :price_sum_ex_tax, :price_sum_in_tax])
    # end


end
