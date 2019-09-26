class Admin::ArtistsController < ApplicationController
  before_action :authenticate_admin_user!
  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @products = @artist.products.includes([:artist, :genre]).page(params[:page]).reverse_order.per(20)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def new
    @artist_new = Artist.new
  end

   def update
    artist = Artist.find(params[:id])
    if artist.update(artist_params)
      flash[:notice] = 'アーティストの情報を更新しました。'
      redirect_to admin_artist_path(artist.id)
    else
      flash[:danger] = 'アーティスト名を入力してください'
      redirect_to edit_admin_artist_path
    end
  end

  def create
    @artist_new = Artist.new(artist_params)
    if @artist_new.save
      flash[:notice] = 'アーティストを新規追加しました。'
      redirect_to admin_artist_path(@artist_new)
    else
      flash[:danger] = 'アーティストの追加に失敗しました'
      redirect_to new_admin_artist_path
    end
  end




  private
    def artist_params
      params.require(:artist).permit(:artist_name, :artist_image, :artist_introduction)
    end
end
