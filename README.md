##Description
This program version 0.0.0 is a work in progress. It will function as a voting system to allow voters to place votes for their candidates through an API.

##Setup

####GEMS require
  - rails (4.2.1)
  - JSON (1.8.2, 1.8.1)

####Database
  - create database, load schema and initialize for your computer use command: bin/rake db:setup
  - after database is created, to update use command: bin/rake db:migrate

##Run

####Test
  - to run all tests for program use command: bin/rake

####Routes
  - run rails server
  Possible routes
    - races/index : displays all races
    - races/show : displays one race
    - votes/index : displays all votes
    - votes/create : creates one vote which requires security key
    - votes/destroy : destroy one vote
    - voters/create : creates voter and generates security key
    - voters/show : display voter which requires security key
    - voters/update : updates voter which requires security key
    - candidates/index : displays all candidates
    - candidates/show : displays one candidate

##User
The user of the API can access all routes with security key given when voter profile is created. User will not have access to create candidates so system operator will need to create all candidates before user access.
    
