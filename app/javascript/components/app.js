import React from 'react'
import {Route, Switch} from 'react-router-dom'
import Playlists from './Playlists/Playlists'
import Playlist from './Playlist/Playlist'

const App = () => {
  return (
  <Switch>
    <Route exact_path="/" component={Playlists}/>
    <Route exact_path="/playlists/:id" component={Playlist}/>
  </Switch>)
}

export default App
