class HomeController < ApplicationController
  def index
    @albums = Album.all
    # @tracks = Track.all
    # @artist = Artist.all
    @album = Album.find_by(params[:id])
  end
end
