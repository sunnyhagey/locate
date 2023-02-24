import React from 'react'
import AllLocations from './AllLocations'

const LocationPage = props => {
    const {locations, changeSearch} = props


    return ( 
        <div>
            <div class="search-bar">
            Find a City:
            <input placeholder='City Name...' onChange={changeSearch}></input>
            </div>
            <div>
                <AllLocations locations={locations}/>
            </div>
        </div>
    )

}

export default LocationPage