class TracksController < ApplicationController

  def show
    @track = Track.find_by_id(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @album = Album.find(params[:album_id])
    @track = @album.tracks.build(tracks_params) #working

    if @track.save
      redirect_to @album
      # render json: { message: "success", fileID: @track.id }, :status => 200
    else
      render json: { error: @track.errors.full_messages.join(',')}, :status => 400
      # redirect_to @album
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
    params.require(:track).permit(:buy_link, :album_id, :title, :song)
  end
end
