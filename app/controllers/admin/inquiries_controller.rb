class Admin::InquiriesController < ApplicationController
  def index
  	@inquiry = Inquiry.page(params[:page]).reverse_order.per(5)
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end
end
