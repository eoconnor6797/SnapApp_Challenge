# Photo

[Deployed App](http://photo.eoconnor.io)

## Technology Details
This project was made using the Phoenix/elixir framework
To run this project you will need a few dependencies:

  * Erlang / OTP version 20.2
  * Elixir version 1.6
  * Phoenix version 1.3
  * NodeJS version 9.4
  * Standard C/C++ dev tools (e.g. the Ubuntu build-essential package)
  (NOTE: I've included a binary that will allow you run the app as long as 
  you have at least Erlang / OTP version 20.2 also I have deployed it to a 
  VPS as well so there is no real need to run it yourselves)
  * I used an elixir library for doing the API call to Unspalsh found [here] (https://github.com/waynehoover/unsplash-elixir)
  (NOTE: The library was missing the option for specifying the number of
  photos you wanted back from the call so I had to add that in and currently 
  have an open pull-request to add that to the library)

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
  * `lib/photo_web/router.ex` Decides where all the requests are sent to


To start your Phoenix server:

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
