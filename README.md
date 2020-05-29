# Take a Hike!
> Explore hikes near you!

## Table of contents
* [General info](#general-info)
* [Intro Video](#intro-video)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General info
Take a Hike! is a CLI app which allows users to make a profile, search for new hikes in Colorado, and add or remove hikes from their own unique favorites list. 

## Intro Video


## Technologies
* Ruby - version 2.6.1
* ActiveRecord - version 6.0
* Sinatra - version 2.0
* Sinatra-activerecord - version 2.0
* SQLite3 - version 1.4

## Setup
To run this project, install it locally by cloning the GitHub repository and typing:
```ruby
ruby runner.rb
```

## Code Examples
```ruby
  puts "Which hike would you like to add?"
  loop do
      user_choice = gets.strip.to_i
      if user_choice > 0 && user_choice <= list_of_hikes.length
          selected_hike = list_of_hikes[user_choice - 1]
          new_favorite = FavoritesList.find_or_create_by(hike: selected_hike, user: $user)
          show_my_favorites
          break
      else
          puts "Please choose again - invalid entry"
      end
  end
```



## Features
* Browse hikes by location
* Create user profile that saves your favorites list
* Add/remove hikes from your favorites list
* Seed database with Hiking Project API data (thanks Hiking Project!)


## To-do list:
* Refactor code and add helper methods
* Add API functionality to update with additional hikes in Colorado
* Add ability to "search hikes near me"
* Add additional hike details

## Status
Project is: finished with option to expand functionality and DRY out code.

## Inspiration
The inspiration for Take a Hike! came from a desire to find new hikes and explore all that Colorado has to offer! We wanted to make an app that makes it easy to find hikes in Colorado and keep track of the ones you hope to complete. 

## Contact
Created by [Chris Banta](http://www.linkedin.com/in/chris-banta), [Haley Kelling](www.linkedin.com/in/haley-kelling), and [Matt Malecki](mmalecki4@gmail.com) 

Feel free to contact us!!!

