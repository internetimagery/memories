# The main app logic. Control our stuff!
riot = require 'riot'
electron = require 'electron'

class Controller
  constructor: () ->
    @view_state = 0 # List view / Grid view / Etc
    @running = false # Are we processing data?


    riot.observable @
    @on "*", @handler

  # Handle events
  handler: (event, args...)=>
    if not @running
      @[event] args... if @[event]?

  view_request: (view)->
    if view != @view_state
      @view_state = view
      console.log "Switching view", view
      @trigger "view_change", view

  upload_browser_request: ->
    @running = true
    console.log electron.dialog.showOpenDialog {properties: "openDirectory"}
    console.log "upload browse window requested"
    @running = false

module.exports = Controller
