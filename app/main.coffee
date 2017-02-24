# Main app! Lets go!


# Make riot global, to allow compiled tags to see it
@riot = require 'riot'

# Pull in our components and styles
require "material-design-lite/material"

require "./tags/app-root.tag"
# require "./tags/test-button.tag"

# Initialize our app!
app = riot.mount "#app", "app-root"

#
# sleep = (count)->
#   setTimeout ->
#     # app[0].add count
#     if count
#       sleep count -= 1
#   , 400
# sleep 10
