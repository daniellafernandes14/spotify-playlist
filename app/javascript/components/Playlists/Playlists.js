import React, { useState, useEffect } from 'react'
import axios from 'axios'

const Playlists = () => {
  const[playlists, setPlaylists] = useState([])

  useEffect(()=>{
    axios.get('../../db/seeds.rb')
    .then( resp => console.log(resp) )
    .catch( resp => console.log(resp) )
  }, [playlists.length])

  return (
  <div>This is the Playlists index view for our app.</div>
  )
}

export default Playlists
