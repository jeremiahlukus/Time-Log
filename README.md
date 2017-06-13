# Time Log App
[![Build Status](https://travis-ci.org/jeremiahlukus/Time-Log.svg?branch=master)](https://travis-ci.org/jeremiahlukus/Time-Log)

## Purpose: Document whether or not employees worked overtime or not

### Models

- X post:date :rationale 
- X user devise   <--
- X admin  STI ^  <--



### Features 

- approval workflow
* status to post
* status needs to be required
* status needs default val
* implement approval stages
* locking 
- send sms -> link_to log time
- admin dashboard -> administrate 
- email summary to admins for approval
- need documentation for no overtime 
- X block non-admin and guest users

### UI: 
- X bootstrap -> formatting
- X update forms
- icons (font awesome)
### Gems to use
- devise  <--
- administrate 
- bootstrap
- twillio 
- dotevn
- rspec   <--
- capybara




## Recactor TODOs:
- refactor user association integration test in post_spec
