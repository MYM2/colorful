class Admin::EndUsersController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @admin_end_users = EndUser.with_deleted
    # with_deleted = all + 論理削除されたデータ (with_deletedをつけると論理削除されたデータも表示する
    @pages = @admin_end_users.page(params[:page]).per(7)
  end

  def show
    @admin_end_user = EndUser.with_deleted.find(params[:id])
  end

  def edit
    @admin_end_user = EndUser.with_deleted.find(params[:id])
  end

  def destroy
    @admin_end_user = EndUser.with_deleted.find(params[:id])
    if @admin_end_user.destroy
      flash[:success] = 'ユーザーの論理削除が完了しました。'
      redirect_to admin_end_users_path
    else
      flash[:danger] = "ユーザーの論理削除に失敗しました。"
      redirect_to admin_end_users_path
    end
  end

  def really_destroy
    @admin_end_user = EndUser.with_deleted.find(params[:id])
    if @admin_end_user.really_destroy!
      flash[:success] = 'ユーザーの物理削除が完了しました。'
      redirect_to admin_end_users_path
    else
      flash[:danger] = "ユーザーの物理削除に失敗しました。"
      redirect_to admin_end_users_path
    end
  end

  def restore
  end

  def update
    @admin_end_user = EndUser.with_deleted.find(params[:id])
    if @admin_end_user.update(admin_end_user_params)
      flash[:success] = 'ユーザー情報を編集しました。'
      redirect_to admin_end_user_path
    else
      flash[:danger] = "ユーザー情報の編集に失敗しました。"
      redirect_to edit_admin_end_user_path
    end
  end

  protected
    def admin_end_user_params
      params.require(:end_user).permit(:lastname_kanji, :firstname_kanji, :lastname_kana, :firstname_kana, :phone_number, :email)
    end
end
