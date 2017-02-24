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
      "material-design-lite": [
        "material.css"
      ]
    }
  }
};
