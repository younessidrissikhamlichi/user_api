import axios from 'axios';
import React, { useEffect, useState } from 'react'

const URL_API = 'http://localhost:8080/api/persons';
function PersonList() {

    const [persons, setPersons] = useState([]);

    useEffect(() => {
        axios.get(URL_API)
        .then((response) => {
            setPersons(response.data);
        })
    }, [])

  return (
    <div>
      <h2>List des personnes</h2>
      <ul>
        {persons.map((person) => (
            <li key={person.id}>
                {person.firstName} {person.lastName} : {person.login.username}
            </li>
        ))}
      </ul>
    </div>
  )
}

export default PersonList
