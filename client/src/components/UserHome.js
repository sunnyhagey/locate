import React, {useState, useEffect} from 'react'
import UserLocations from './UserLocations'

const UserHome = props => {
    const {user} = props

    const [userLocations, setUserLocations] = useState([])

    useEffect(() => {
        fetch("/user_locations")
          .then((r) => r.json())
          .then(setUserLocations)
      }, [])

    
    const handleDelete = id => {
        fetch(`/user_locations/${id}`, {
            method: "DELETE",
          }).then((r) => {
            if (r.ok) {
              setUserLocations((userLocations) =>
                userLocations.filter((location) => location.id !== id)
              );
            }
          });
    }



    return(
        <div>
            <UserLocations user={user} userLocations ={userLocations} handleDelete={handleDelete}/>
        </div>
    )
}

export default UserHome