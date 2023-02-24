import React from 'react'
import UserLocation from './UserLocation'
import { Link } from 'react-router-dom'
import { Card } from 'semantic-ui-react'

const UserLocations = props => {
    const {user, userLocations, handleDelete} = props

    const renderUserLocations = userLocations.map(userLocation => <Link key={userLocation.id}><UserLocation key={userLocation.id} userLocation={userLocation} user={user} handleDelete={handleDelete}/></Link>)

    return (
        <div>
            <h3>My Favorite Locations:</h3>
                <Card.Group centered>
                    {renderUserLocations}
                </Card.Group>
        </div>
    )

}

export default UserLocations