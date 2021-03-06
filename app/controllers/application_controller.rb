class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


 def after_sign_in_path_for(resource)
 	if current_end_user
 	    products_path
 	else
 		admin_admin_users_path
 		#管理者メニューへのパス
    end
 end

 def after_sign_out_path_for(resource)
	    products_path
 end

before_action :set_search

def set_search
  #@search = Product.search(params[:q])
  @search = Product.ransack(params[:q]) #ransackメソッド推奨
  @search_products = @search.result.page(params[:page])

end
module Colorful
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ja #追加
  end
end
protected
  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :phone_number, deliveries_attributes: [:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :phone_number, :zipcode, :address, :default]])

  end
end
