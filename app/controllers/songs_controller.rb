class SongsController < ApplicationController
  def search
      s_songs = RSpotify::Track.search(params[:q])
      @songs = s_songs.map do |s_song|
        Track.new_from_spotify_track(s_song)
      end
      render json: @songs
    end
end
