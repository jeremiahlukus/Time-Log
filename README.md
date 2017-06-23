# Time Log App [![Build Status](https://travis-ci.org/jeremiahlukus/Time-Log.svg?branch=master)](https://travis-ci.org/jeremiahlukus/Time-Log)

### https://travis-ci.org/jeremiahlukus/Time-Log/builds
### https://time-log-overtime.herokuapp.com/

## Purpose: Document whether or not employees worked overtime or not

### Models

- X post:date :rationale 
- X user devise   <--
- X admin  STI ^  <--
- AuditLog - keep track of if a employee had overtime or not
* Dependencies: 
- User

* Attrs:
- Status:integer (emun) -> pending (created), complete
- start_date:date -> default previous Monday
- date_verified -> default nil 
rails g resource AuditLog user:references status:integer start_date:date end_date:date


### Features 

- approval workflow
* status to post
* status needs to be required
* status needs default val
* implement approval stages
* locking 

- send sms -> link_to log time -> integrate with heroku scheduler
- admin dashboard -> administrate 
- email summary to admins for approval
- need documentation for no overtime 
- X block non-admin and guest users

### UI: 
- X bootstrap -> formatting
- X update forms
- X icons (font awesome)

### Gems to use
- X devise  <--
- X administrate 
- X bootstrap
- X twillio 
- X dotevn
- X rspec   <--
- X capybara


## TODO
- X Integrate validation for phone in User: 
* X No spaces or dashes
* X 10 chars
* X all chars number

## Recactor TODOs:
- X Refactor posts/_forms for admin user with status 
