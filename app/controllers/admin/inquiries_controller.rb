class Admin::InquiriesController < ApplicationController
  def index
  end

  def show
  	@inquiry = Inquiry.find(params[:id])
  	@reply = Reply.new
  end
end
