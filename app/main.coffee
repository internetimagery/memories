# Main app! Lets go!

# Make riot global, to allow compiled tags to see it
@riot = require 'riot'
myTag = require "./tags/myTag.tag"

riot.mount "#app", "my-tag", {message: "hello there"}
