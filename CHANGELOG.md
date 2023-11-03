# Revision history for example-haskell-web-app

## 0.1.0.6 -- 2021.03.16

* Routing all unknown paths to static file retrieval,
  that does not force a content-type response header.
  This way the web dev can just add files to the site
  without needing to add each to the routers.

## 0.1.0.5 -- 2021.03.16

* Fleshed out the handler for application/json requests.
* Announced existence of the project on Mastodon.

## 0.1.0.3, 0.1.0.4 -- 2021.03.14

* Intermediary increments just to get cabal to recognize
  that things did in fact change. Maybe those things get
  recognized if they get added to the .cabal file?

## 0.1.0.2 -- 2021.03.12

* Managed to route based on accept content-type.
* Split response creators into separate modules by content type.

## 0.1.0.1 -- 2021.03.05

* Renamed functions from the sample code to fit me better.
* Added comments to the sample code, to explain workings.
* Changed to a different listen port. Found out that we can't broadcast on low port ranges like 80 and 443.
* Responding with proper HTML5.
* Added gzipping middleware.
* Added static file hosting.

## 0.1.0.0 -- 2021.03.05

* First version. Released on an unsuspecting world.
* Copied sample code.
