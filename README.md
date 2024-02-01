# README

## data response (aka index) of all animals
    - IMPORTANT:  done inside of rails console in terminal

- Animal.create(common_name: 'Lion', scientific_binomial: 'Panthera leo')
- Animal.create(common_name: 'Zebra', scientific_binomial: 'Equus quagga')
- Animal.create(common_name: 'Giraffe', scientific_binomial: 'Cervus camelopardalis')

### results in postman
    - IMPORTANT: have to be running server in terminal
#### process for postman
- GET ->  localhost:3000/aniamls
- Click the send button
- Body -> Pretty -> JSON

- [
    {
        "id": 1,
        "common_name": "Lion",
        "scientific_binomial": "Panthera leo",
        "created_at": "2024-02-01T18:05:07.796Z",
        "updated_at": "2024-02-01T18:05:07.796Z"
    },
    {
        "id": 2,
        "common_name": "Zebra",
        "scientific_binomial": "Equus quagga",
        "created_at": "2024-02-01T18:14:21.715Z",
        "updated_at": "2024-02-01T18:14:21.715Z"
    },
    {
        "id": 3,
        "common_name": "Giraffe",
        "scientific_binomial": "Cervus camelopardalis",
        "created_at": "2024-02-01T18:14:37.167Z",
        "updated_at": "2024-02-01T18:14:37.167Z"
    }
]

## show animals
### postman results
#### process for postman
- GET ->  localhost:3000/aniamls/3
- Click the send button
- Body -> Pretty -> JSON

{
    "id": 3,
    "common_name": "Giraffe",
    "scientific_binomial": "Cervus camelopardalis",
    "created_at": "2024-02-01T18:14:37.167Z",
    "updated_at": "2024-02-01T18:14:37.167Z"
}

## create animal
    - IMPORTANT: need to disable authenticity token with this command in app/controllers/application_controller.rb 
    - $ skip_before_action :verify_authenticity_token
### postman results
#### process for postman
    - REMEMBER to use POST to create instead of GET.
- POST ->  localhost:3000/aniamls
- Body -> raw -> JSON (in upper portion of postman)

- in body:

{
    "common_name": "Mongoose",
    "scientific_binomial": "Herpestidae"
}

- Click the send button
- Body -> Pretty -> JSON (in bottom portion of postman)

- should get result (in not check preview for errors):

{
    "id": 5,
    "common_name": "Mongoose",
    "scientific_binomial": "Herpestidae",
    "created_at": "2024-02-01T19:02:16.035Z",
    "updated_at": "2024-02-01T19:02:16.035Z"
}

## update animal
### postman results
#### process for postman
    - REMEMBER to use PATCH to update
- PATCH ->  localhost:3000/animals/5
- Body -> raw -> JSON (in upper part of postman)

- in body:

{
    "common_name": "Tiger",
    "scientific_binomial": "Panthera tigris"
}

- Click the send button
- Body -> Pretty -> JSON

- should get result (if not check preview for errors):

{
    "common_name": "Tiger",
    "scientific_binomial": "Panthera tigris",
    "id": 5,
    "created_at": "2024-02-01T19:02:16.035Z",
    "updated_at": "2024-02-01T19:29:16.103Z"
}

## delete animal
### postman results
#### process for postman
    - REMEMBER to use DELETE to destroy
- DELETE -> localhost:3000/animals/3
- Click the send button

- Body -> Pretty -> JSON
- should get back item destroyed (if not check preview for errors):

{
    "id": 3,
    "common_name": "Giraffe",
    "scientific_binomial": "Cervus camelopardalis",
    "created_at": "2024-02-01T18:14:37.167Z",
    "updated_at": "2024-02-01T18:14:37.167Z"
}

## create animal sightings
### postman results
#### process for postman
- POST ->  localhost:3000/sightings
- Body -> raw -> JSON

{
    "animal_id": 5,
    "latitude": "34.0549° N",
    "longitude": "18.2426° W",
    "date": "2023-05-14"
}

- Click the send button
- Body -> Pretty -> JSON

{
    "id": 5,
    "animal_id": 5,
    "latitude": "34.0549° N",
    "longitude": "18.2426° W",
    "date": "2023-05-14",
    "created_at": "2024-02-01T22:00:18.889Z",
    "updated_at": "2024-02-01T22:00:18.889Z"
}

## update animal sightings
### postman results
#### process for postman
- PATCH ->  localhost:3000/sightings/5
- Body -> raw -> JSON

{
    "latitude": "34.0395° S",
    "longitude": "18.2436° E",
    "date": "2023-05-15"
}

- Click the send button
- Body -> Pretty -> JSON

{
    "latitude": "34.0395° S",
    "longitude": "18.2436° E",
    "date": "2023-05-15",
    "id": 5,
    "animal_id": 5,
    "created_at": "2024-02-01T22:00:18.889Z",
    "updated_at": "2024-02-01T22:07:09.440Z"
}

## delete animal sighting
### postman results
#### process for postman
- DELETE -> localhost:3000/animals/3
- Click the send button

- Body -> Pretty -> JSON
- should get back item destroyed (if not check preview for errors):

{
    "id": 4,
    "animal_id": 4,
    "latitude": "34.0549° N",
    "longitude": "18.2426° W",
    "date": "2025-04-13",
    "created_at": "2024-02-01T21:59:31.498Z",
    "updated_at": "2024-02-01T21:59:31.498Z"
}

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
