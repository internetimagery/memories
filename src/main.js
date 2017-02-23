(function() {
  var App, Vue;

  Vue = require('vue');

  App = require('./App.vue');

  new Vue({
    el: "#app",
    render: function(h) {
      return h(App);
    }
  });

}).call(this);
