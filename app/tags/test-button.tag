<test-button>
  <!-- Accent-colored raised button with ripple -->
  <button onclick={clicked} class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
    {opts.name}
  </button>

  <script type="text/coffee">
    @clicked = (e)->
      opts.click e if opts.click?
  </script>
</test-button>
