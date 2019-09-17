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



protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :phone_number])
  end
end