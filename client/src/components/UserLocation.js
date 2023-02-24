import React from 'react'
import {Card, Button} from 'semantic-ui-react'

const UserLocation = props => {
    const {user, userLocation, handleDelete} = props

    return (
        user.id === userLocation.user.id ?
        <div class='locationcard'>
        <Card ui fluid card color='olive'>
            <img src={userLocation.location.image} wrapped ui={false} height={300} width={300} alt="location"/>
            <Card.Content>
                <Card.Header>{userLocation.location.image}</Card.Header>
                <p class="address">{userLocation.location.address}</p>
                <div class='locationinformation'>
                    Description: {userLocation.location.description}
                    </div>
                    <div class='locationinformation'>
                    City: {userLocation.location.city}
                    </div>
                <Button onClick={() => handleDelete(userLocation.location.id)}>Delete Location</Button>
            </Card.Content>
        </Card>
        </div>
        : null
    )

}

export default UserLocation
