# Photo

[Deployed App](http://photo.eoconnor.io) - I've deployed my app here so that you don't 
have to waste hours trying to get phoenix to run on your machine. (Unless you'd like to in which
case I have a list of prereqs and instructions on how to run the server afterwards)

## Description
Very basic app that queries [Unsplash](https://unsplash.com) for 25 random pictures
and displays them with the username of the author. Refreshing the page will load 
25 new photos. Clicking on the user's name will send you to their Unsplash page

## Technology Details
This project was made using the Phoenix/elixir framework
To run this project you will need a few prerequisites:

  * Erlang / OTP version 20.2
  * Elixir version 1.6
  * Phoenix version 1.3
  * NodeJS version 9.4
  * Standard C/C++ dev tools (e.g. the Ubuntu build-essential package)
  * I used an elixir library for doing the API call to Unspalsh found [here](https://github.com/waynehoover/unsplash-elixir)
  (NOTE: The library was missing the option for specifying the number of
  photos you wanted back from the call so I had to add that in and currently 
  have an open pull-request to add that to the library)
  * Assuming you have all the dependencies above you should be able to
  run the application follow the steps in the `To start your Phoenix server`
  section of this README

## Files of interest 
In case you are unfamiliar with the Phoenix Framework here are some of the 
files that may be of interest to you.

  * `lib/photo_web/controllers/page_controller.ex`
      - Holds the logic for doing the API call and getting the useful fields
  * `lib/photo_web/templates/page/index.html.eex`
      - Does the rendering of the photos with the information passed from
        the controller
  * `lib/photo/application.ex`
      - The actual Phoenix application / the "main"
  * Most of the other files are template files that Phoenix needs to run the app
  * `assets/` is where all the React  and css would go
  * `deps/` where all the project dependecies and libraries are stored
  * `lib/photo_web/router.ex` Decides where all the requests are sent to


## To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
