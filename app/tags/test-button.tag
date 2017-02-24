<test-button>
  <button ref="button" class={style}>
    Flat Button!
  </button>

  <script type="text/coffee">

    style = ["mdc-button"]
    style.push "mdc-button--#{o}" for o in ["dense", "raised", "compact", "primary", "accent"] when opts[o]
    @style = style.join " "

    @on "mount", ->
      opts.mdc.ripple.MDCRipple.attachTo @refs.button

    @clicked = (e)->
      opts.click e if opts.click?

  </script>
</test-button>
