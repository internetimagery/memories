# Main app! Lets go!


# Make riot and mdc global, to allow compiled tags to see them
window.riot = require 'riot'
window.mdc = require "material-components-web/dist/material-components-web"

# pull in our mdc's!
require './tags/mdc/mdc-core'

# Pull in our app tags.
require "./tags/app-core.tag"


# Initialize our app!
app = riot.mount "#app", "app-core"

#
# sleep = (count)->
#   setTimeout ->
#     # app[0].add count
#     if count
#       sleep count -= 1
#   , 400
# sleep 10
