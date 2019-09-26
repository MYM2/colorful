class Admin::InquiriesController < ApplicationController
	before_action :authenticate_admin_user!
  def index
  	@inquiry = Inquiry.page(params[:page]).reverse_order.per(8)
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end
end
