import React from 'react'
import {Card} from 'semantic-ui-react'

const LocationCard = props => {
    const {location} = props

    return (
        <div class='locationcard'>
        <Card ui fluid card color='olive'>
            <img src={location.image} wrapped ui={false} height={300} width={300} alt="location"/>
            <Card.Content>
                <Card.Header>{location.name}</Card.Header>
                <p class="address">{location.address}</p>
                <div class='locationinformation'>
                    Description: {location.description}
                    </div>
                <div class='locationinformation'>
                    City: {location.city}
                </div>
            </Card.Content>
        </Card>
        </div>
    )

}

export default LocationCard