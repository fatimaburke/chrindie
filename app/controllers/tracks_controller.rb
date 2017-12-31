class TracksController < ApplicationController

  def show
    @track = Track.find_by_id(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @album = Album.find(params[:album_id])
    @track = current_artist.tracks.create(tracks_params) || current_user.tracks.create(tracks_params)

    # @track = @album.tracks.new(tracks_params) #kind of working
    # @track = @album.tracks.build(title: title, artist_id: artist_id) #working

    if @track.save!
      render json: { message: "success", fileID: @track.id }, :status => 200
    else
      render json: { error: @track.errors.full_messages.join(',')}, :status => 400
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
    params.require(:track).permit(:buy_link, :artist_id, :album_id, :title, :track)
  end
end
