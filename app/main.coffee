# Main app! Lets go!


# Make riot global, to allow compiled tags to see it
window.riot = require 'riot'

# Pull in our components and styles
mdc = require "material-components-web/dist/material-components-web"

# require "./tags/app-root.tag"
require "./tags/test-button.tag"

# Initialize our app!
app = riot.mount "#app", "test-button", {mdc: mdc, accent: true}

#
# sleep = (count)->
#   setTimeout ->
#     # app[0].add count
#     if count
#       sleep count -= 1
#   , 400
# sleep 10
