class AlbumsController < ApplicationController
before_action :authenticate_artist!, :except => [:show, :index, :results]

  def index
    @albums = Album.all
  end

  def results

  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new

  end
  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = current_artist.albums.build(albums_params)

    if @album.save
      flash[:success] = 'Album Added'
      # redirect_to album_tracks_path
      redirect_to @album
    else
      render 'new'
    end
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(albums_params)
      flash[:success] = 'Album Updated'
      redirect_to @album
    else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    redirect_to albums_path
  end

  private

  def albums_params
    params.require(:album).permit(:title, :year, :genre, :artist, :artist_id, :art, :track)
  end
end
