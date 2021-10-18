# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

playlists = Playlist.create([{
  name: 'Funky House'
}, {
  name: 'Mellow tunes'
}, {
  name: 'Old school classics'
}])

Song.create([{
  name: 'Bitch better have my money',
  artist: 'Rihanna',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/9/91/Bitch_Better_Have_My_Money_cover.png',
  playlist: playlists.first
}, {
  name: 'Smells like teen spirit',
  artist: 'Nirvana',
  image_url: 'https://m.media-amazon.com/images/I/71N1IYAhX-L._SS500_.jpg',
  playlist: playlists.last
}, {
  name: 'Imagine',
  artist: 'John Lennon',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/6/69/ImagineCover.jpg',
  playlist: playlists.last
}, {
  name: 'Billie Jean',
  artist: 'Michael Jackson',
  image_url: 'https://m.media-amazon.com/images/M/MV5BMjU2NjE5YTItZDJlOC00ZjdhLWFmN2YtZTBiZGM0ODI3YTJhXkEyXkFqcGdeQXVyNDE1MjQ4MTk@._V1_.jpg',
  playlist: playlists.last
}])
