class Admin::EndUsersController < ApplicationController
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
    @admin_end_user = EndUser.find(params[:id])
    @admin_end_user.destroy
    redirect_to admin_end_users_path
  end

  def really_destroy
    @admin_end_user = EndUser.with_deleted.find(params[:id])
    @admin_end_user.really_destroy!
    redirect_to admin_end_users_path
  end

  def restore
  end

  def update
  end
end
