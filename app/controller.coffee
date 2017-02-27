# The main app logic. Control our stuff!
riot = require 'riot'

class Controller
  constructor: () ->
    @view_state = 0


    riot.observable @
    @on "*", @handler

  # Handle events
  handler: (event, args...)=>
    switch event
      # Requesting a change of display type
      when "view_request" then @view_request args...

  view_request: (view)->
    if view != @view_state
      @view_state = view
      console.log "Switching view", view
      @trigger "view_change", view

module.exports = Controller
