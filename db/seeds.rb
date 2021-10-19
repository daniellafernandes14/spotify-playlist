# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'rest-client'
require 'json'

Composition.all.each do |composition|
  begin
  RSpotify.authenticate(ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"])
    tracks = RSpotify::Track.search(composition[:name])
    track = tracks.first
  rescue NoMethodError => e

  else
    id = track.instance_variable_get('@id')
    composition.update(spotify_id: id)
  end
end
