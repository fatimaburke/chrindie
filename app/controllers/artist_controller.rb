class ArtistController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end

  def update

  end

end
