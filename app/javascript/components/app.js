import React from 'react'
import {Route, Switch} from 'react-router-dom'

const App = () => {
  return (<Switch>
    <Route exact_path="/playlists" component={Playlists}/>
    <Route exact_path="/playlists/:id" component={Playlist}/>

  </Switch>)
}

export default App
