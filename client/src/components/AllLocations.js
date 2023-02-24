import React from 'react'
import LocationCard from './LocationCard'
import { Link } from 'react-router-dom'
import { Card } from 'semantic-ui-react'

const AllLocations = props => {
    const {locations} = props 

    const renderLocationList = locations.map(location => <Link key={location.id}><LocationCard key={location.id} location={location}/></Link>)

    return (
        <div>
            <h3>Places To Visit:</h3>
                <Card.Group centered>
                    {renderLocationList}
                </Card.Group>
        </div>
    )
}

export default AllLocations