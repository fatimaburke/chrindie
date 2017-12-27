class TracksController < ApplicationController
  def show
    @track = Track.find_by_id(params[:id])
  end

  def new
    @track = Track.new

  end

  def create
    @track = current_artist.tracks.build(tracks_params) || current_user.tracks.build(tracks_params) 

    if @track.save
      flash[:success] = 'Track Added'
      redirect_to @album
    else
      render 'new'
    end
  end

  def update
    @track = Track.find_by_id(params[:id])

    if @track.update(tracks_params)
      flash[:success] = 'Track Updated'
      redirect_to @album
    else
      render 'edit'
    end
  end

  def destroy
    @track = Track.find_by_id(params[:id])
    @track.destroy

    redirect_to tracks_path
  end

  private

  def tracks_params
    params.require(:track).permit(:title, :buy_link :artist_id)
  end
end
