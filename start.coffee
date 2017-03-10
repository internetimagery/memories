# Run the app!
electron = require "electron"
path = require "path"
window = require "electron-window"

dev = true

electron.app.on "ready", ()->
  # Turn off the default menu
  electron.app.on "browser-window-created", (err, win)->
      win.setMenu null if not dev
  mainWindow = window.createWindow
    width: 800
    height: 600
    # frame: false
  indexPath = "index.html" #path.resolve __dirname, "index.html"

  mainWindow.showUrl indexPath, ()->
    console.log "Window up and running!"
    mainWindow.webContents.openDevTools() if dev
    mainWindow.setResizable false if not dev

# Ensure process ends when closed
process.on "exit", ->
  try
    @.proc.disconnect()
    @.proc.kill()
    process.stdout.write "Process Closed"
  catch error
    process.stdout.write "Process Not Autoclosed."
