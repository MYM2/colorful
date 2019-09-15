class InquiriesController < ApplicationController
  def new
  	@inquiry = Inquiry.new
  end

  def create
  	inquiry = Inquiry.new(inquiry_params)
  	inquiry.save
  	flash[:notice] = 'お問い合わせあいがとうございます。<br>内容を確認の上後日管理者からご連絡させていただきます。'
  	redirect_to products_path
  end



  private
  def inquiry_params
  	params.require(:inquiry).permit(:inquirer_name,:mail,:inquiry_content)
  end
end
