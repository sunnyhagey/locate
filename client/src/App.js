import React, {useEffect, useState} from "react";
import LocationPage from './components/LocationPage'
import Navigation from './components/Navigation'
import Login from "./components/Login";
import UserHome from "./components/UserHome";
import AddNewLocationForm from './components/AddNewLocationForm'
import { Switch, Route } from 'react-router-dom'
import './App.css';

const App = () => {
  const [user, setUser] = useState(null)
  const [locations, setLocations] = useState([])

  const [searchLocations, setSearchLocations] = useState('')

  function changeSearch(event){
    setSearchLocations(event.target.value)

  }

  const filteredLocations = locations.filter(location => location.city.toLowerCase().includes(searchLocations.toLowerCase()))

  useEffect(() => {
    fetch("/locations")
      .then((r) => r.json())
      .then(setLocations)
  }, [])

  const handleAddLocations = newLocation => {
      const updatedLocationArray = [...locations, newLocation]
      setLocations(updatedLocationArray)
  }

  useEffect(() => {
    fetch("/me").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (!user) return <Login onLogin={setUser}/>

    return  (
      <div className="App">
        
        <Navigation setUser={setUser}/>
        <main>
          <Switch>
            <Route path="/home">
                <UserHome user={user}/>
            </Route>
            <Route path="/locations">
                <LocationPage locations={filteredLocations}
                  changeSearch={changeSearch} />
            </Route>
            <Route path="/new">
                <AddNewLocationForm handleAddLocations={handleAddLocations}/>
            </Route>
          </Switch> 
        </main>   
      </div>
  )

}

export default App
