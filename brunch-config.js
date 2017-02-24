// See http://brunch.io for documentation.
module.exports = {
  files: {
    javascripts: {
      joinTo: 'app.js'
    },
    stylesheets: {
      joinTo: 'app.css'
    }
  },
  plugins: {
    on: ["riot"],
    riot: {}
  },
  npm: {
    styles: {
      "skeleton-css": ["css/normalize.css", "css/skeleton.css"],
      "material-design-lite": [
        "material.css"
      ],
    }
  }
};
