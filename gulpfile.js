(function() {
  var child_process, coffee, css, gulp;

  gulp = require('gulp');

  coffee = require('gulp-coffee');

  css = require('gulp-concat-css');

  child_process = require('child_process');

  gulp.task("coffee", function() {
    return gulp.src("**/*.coffee").pipe(coffee()).pipe(gulp.dest("."));
  });

  gulp.task("tags", function(done) {
    return child_process.exec("riot -m src/tags src/tags/tags.js", done);
  });

  gulp.task("assets", function() {
    return gulp.src("src/assets/*").pipe(gulp.dest("dist"));
  });

  gulp.task("css", function() {
    return gulp.src(["node_modules/material-components-web/dist/material-components-web.css", "src/**/*.css"]).pipe(css("bundle.css")).pipe(gulp.dest("dist"));
  });

  gulp.task("js", ["coffee", "tags"], function() {
    return gulp.src("src/**/*.js").pipe(gulp.dest("dist"));
  });

  gulp.task("page", ["css", "assets", "js"]);

}).call(this);
