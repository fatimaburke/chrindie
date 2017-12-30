class HomeController < ApplicationController
  def index
    @albums = Album.all
    @tracks = Track.all
  end
end
