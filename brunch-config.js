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
      "flexboxgrid": ["dist/flexboxgrid.css"],
      "material-design-lite": [
        "material.css"
      ],
    }
  }
};
