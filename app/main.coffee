# Main app! Lets go!


# Make riot and mdc global, to allow compiled tags to see them
window.riot = require 'riot'
window.mdc = require "material-components-web/dist/material-components-web"

require "./tags/mdc/mdc-button.tag"
require "./tags/mdc/mdc-icon.tag"
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
