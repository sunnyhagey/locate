import {useState} from 'react';
import {Form, Header, Icon} from 'semantic-ui-react'

const AddNewLocationForm = props => {
    const {handleAddLocation} = props

    const [locationName, setLocationName] = useState('')
    const [locationAddress, setLocationAdress] = useState('')
    const [city, setCity] = useState('')
    const [image, setImage] = useState('')
    const [description, setDescription] = useState('')
    const [formErrors, setFormErrors] = useState([])

    const handleSubmit = e => {
        e.preventDefault()

        fetch('/locations', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Accepts': 'application/json'
            },
            body: JSON.stringify({
                name: locationName,
                address: locationAddress,
                city: city,
                image: image,
                description: description
            }),
        })
        .then((r) => {
        if (r.ok) {
            r.json().then((newLocation) => {
                handleAddLocation(newLocation);
                setFormErrors([]);
              });
            } else {
              r.json().then((err) => setFormErrors(err.errors));
            }
    });
    }
    
    return (
        <div className="new-location-segment">
            <Header as='h1' image>
                <Icon name='leaf'/>
                Add New Location:
            </Header>
            <Form className='new-location-form' onSubmit={handleSubmit}>
                <Form.Group widths='equal'>
                    <Form.Input type="text" name="name" fluid label="Location Name" placeholder="Location Name" value={locationName} onChange={e => setLocationName(e.target.value)}/>
                    <Form.Input type="text" name="address" fluid label="Address" placeholder="Address" value={locationAddress} onChange={e => setLocationAdress(e.target.value)}/>
                    <Form.Input type="text" name="city" fluid label="City" placeholder="City" value={city} onChange={e => setCity(e.target.value)}/>
                    <Form.Input type="text" name="image" fluid label="Image URL" placeholder="Image URL" value={image} onChange={e => setImage(e.target.value)}/>
                    <Form.Input type="text" name="description" fluid label="Description" placeholder="Description" value={description} onChange={e => setDescription(e.target.value)}/>
                </Form.Group>
                {formErrors.length > 0 
                    ? formErrors.map((err) => (
                        <p key={err} style={{ color: "red" }}>
                            {err}
                        </p>
                    ))
                : null}
                <Form.Button className="new-location-submit" type="submit">Add Location</Form.Button>
            </Form>
        </div>
    )
}

export default AddNewLocationForm