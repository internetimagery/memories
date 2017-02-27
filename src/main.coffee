# Main app! Lets go!

riot = require 'riot'

Controller = require './controller'
tags = require './tags/tags'

# Make mdc and our controller global.
window.mdc = require "material-components-web/dist/material-components-web"
window.ctrl = new Controller()

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
