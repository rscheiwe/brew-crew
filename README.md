# README

## Objectives
* Make associations for multiple models
* ActiveRecord
* form_for / form_tag / form_helpers

### The Domain
You've been hired as a barista at a cafe and want to improve their point of sales system!
You see so many customers throughout the day, but want to know which customers are regulars, and track their purchases.

* a `customer` has_many `purchases`
* a `brew` has_many `purchases`
* a `purchase` belongs_to a `customer` and to a `brew`
* a `customer` has_many `brews` through `purchases`
* a `brew` has_many `customers` through `purchases`

### Already Completed
* rails new brew-crew
* rails g model Brew blend_name origin notes strength:integer
* added 'faker' gem to Gemfile
* rails g model Customer name
* rails g model Purchase brew_id:integer customer_id:integer
* created seed data

### Setup
* fork and clone the repo
* bundle install
* run rake db:migrate

##### Deliverables
* create the associations between the models, then run rake db:seed, check that Brews have been made in the rails console
* the brews index page should display all of your coffees as links to their show pages
* the brew show page should have the brews name, origin, notes, and strength
* the customer show page should display their name and list all of the brews they've purchased
* as the barista, I should be able to create a new purchase (with a collection_select for Brew.all) and a field for a customer's name

* route to '/brews/strongest' find the brews with the highest strength

#### Bonus
* strength should only be from 1-5
