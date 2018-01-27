class ArtistController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(albums_params)
      flash[:success] = 'Artist Updated'
      redirect_to @artist
    else
      render 'edit'
    end
  end

  def new
  end

  def create
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to root_path
  end

  private

  def artist_params
    params.require(:artist).permit(:bio, :website, :location, :name)
    # params.permit(:album,:title, :year, :genre, :artist, :artist_id, :art, :track)
  end
end
