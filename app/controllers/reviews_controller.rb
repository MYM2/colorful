class ReviewsController < ApplicationController

	def create
		@review = Review.new(review_params)
		if @review.save
        flash[:success] = "レビューを投稿しました。"
        redirect_to product_path(@review.product_id)
      else
        flash[:danger] = "投稿内容を入力してください。"
        redirect_to product_path(@review.product_id)
      end
	end

	def destroy
    review = Review.find(params[:id])
    product = review.product_id
    review.destroy
    if admin_user_signed_in?
      redirect_to admin_product_path(product)
    else
      redirect_to product_path(product)
    end
	end
	private
    def review_params
      params.require(:review).permit(:end_user_id,:product_id,:review_content)
    end
end
