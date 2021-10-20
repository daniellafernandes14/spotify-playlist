# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require 'rest-client'
require 'json'

# Composition.all.each do |composition|
#   begin
#   RSpotify.authenticate(ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"])
#     tracks = RSpotify::Track.search(composition[:name])
#     track = tracks.first
#   rescue NoMethodError => e

#   else
#     id = track.instance_variable_get('@id')
#     composition.update(spotify_id: id)
#   end
# end

auth = {"Authorization": "Bearer BQBvdU9MaOlGslXPKbNFcf9Vw4G-DzZIMS6BketrsL0sDptu1VIVBqUn7m_IWHK4lPkFXpgUxtiSoS74zjhbDe0v8k2SmRmWmHHIircpsmEMwer1ipM-ixr1L0gZynf9jiSNkVZH5cPCvh_-JWGi1nxSo0nYp5kNQmq"}

endpoint1 = RestClient.get(
  'https://api.spotify.com/v1/browse/categories/mood/playlists?offset=0&limit=50',
  headers=auth
)

data1 = JSON.parse(endpoint1)
