# Main app! Lets go!


# Make riot global, to allow compiled tags to see it
@riot = require 'riot'

# Pull in our components and styles
require "material-design-lite/material"

require "./tags/test-button.tag"

app = riot.mount "#app", "test-button"

sleep = (count)->
  setTimeout ->
    # app[0].add count
    if count
      sleep count -= 1
  , 400
sleep 10
