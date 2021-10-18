class PlaylistsController < ApplicationController

  before_action :find_playlist, only: [:show, :edit, :update, :destroy]

  def index
    Playlist.all = @playlists
  end

  def show
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.save
    redirect_to playlist_path(@playlist)
  end

  def edit
  end

  def update
    @playlist.update(playlist_params)
    redirect_to playlist_path(@playlist)
  end

  def destroy
    @playlist.destroy
    redirect_to playlist_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end

  def find_playlist
    @playlist = Playlist.find(params[:id])
  end

end
