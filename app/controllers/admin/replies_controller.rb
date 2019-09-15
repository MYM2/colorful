class Admin::RepliesController < ApplicationController
	def create
		@reply = Reply.new(reply_params)
		@reply.save
		flash[:notice] = '返信を完了しました'
		redirect_to admin_inquiries_path
	end

private
def reply_params
	params.require(:reply).permit(:reply_content,:inquiry_id)
end
end
