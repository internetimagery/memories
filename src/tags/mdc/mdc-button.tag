<mdc-button>
  <!-- https://github.com/material-components/material-components-web/tree/master/packages/mdc-button -->
  <button onclick={clicked} ref="button" class={style}><yield></yield></button>

  <script type="text/coffee">

    style = ["mdc-button"]
    style.push "mdc-button--#{o}" for o in ["dense", "raised", "compact", "primary", "accent"] when opts[o]
    @style = style.join " "

    @on "mount", ->
      mdc.ripple.MDCRipple.attachTo @refs.button

    @clicked = (e)->
      opts.clicked e if opts.clicked?

  </script>
</mdc-button>
