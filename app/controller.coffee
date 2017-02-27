# The main app logic. Control our stuff!
riot = require 'riot'

class Controller
  constructor: () ->
    @view_state = 0


    riot.observable @
    @on "*", @handler

  # Handle events
  handler: (event, args...)=>
    @[event] args... if @[event]?

  view_request: (view)->
    if view != @view_state
      @view_state = view
      console.log "Switching view", view
      @trigger "view_change", view

  upload_request: ->
    console.log "upload browse window requested"


module.exports = Controller
