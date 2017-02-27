# Lets do some gruntwork!

gulp = require 'gulp'
coffee = require 'gulp-coffee'
css = require 'gulp-concat-css'
bro = require 'gulp-bro'
child_process = require 'child_process'

# Lets convert our awesome-script!
gulp.task "coffee", ->
  gulp.src "**/*.coffee"
  .pipe coffee()
  .pipe gulp.dest "."

# Since only the cli for riot adds the "-m" wrapping, do that
gulp.task "tags", (done)->
  child_process.exec "riot -m src/tags src/tags/tags.js", done

# Copy across assets
gulp.task "assets", ->
  gulp.src "src/assets/*"
  .pipe gulp.dest "dist"

# Combine all our css
gulp.task "css", ->
  gulp.src [
    "node_modules/material-components-web/dist/material-components-web.css"
    "src/**/*.css"
    ]
  .pipe css("bundle.css")
  .pipe gulp.dest "dist"

# Combine all our js, including tag conversion.
gulp.task "js", ["coffee", "tags"], ->
  gulp.src "src/main.js"
  .pipe bro()
  .pipe gulp.dest "dist"

# Put together all page related things. Shortcut.
gulp.task "page", ["css", "assets", "js"]
