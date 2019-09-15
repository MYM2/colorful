class Admin::ArtistsController < ApplicationController
  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def new
    @artist_new = Artist.new
  end

   def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    flash[:notice] = 'アーティストの情報を更新しました。'
    redirect_to admin_artist_path(artist.id)
  end

  def create
    @artist_new = Artist.new(artist_params)
    @artist_new.save
    flash[:notice] = 'アーティストを新規追加しました。'
    redirect_to admin_artist_path(@artist_new.id)
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to admin_artists_path
  end


  private
    def artist_params
      params.require(:artist).permit(:artist_name, :artist_image, :artist_introduction)
    end
end
