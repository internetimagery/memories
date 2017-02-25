<mdc-icon>
  <!-- https://material.io/icons/ -->
  <i class={style}><yield></yield></i>

  <script type="text/coffee">
    style = ["material-icons"]
    style.push switch
      when opts.size <= 18 then "md-18"
      when opts.size <= 24 then "md-24"
      when opts.size <= 36 then "md-36"
      when opts.size <= 48 then "md-48"
    style.push "md-inactive" if opts.inactive
    style.push "md-light" if opts.light
    style.push "md-dark" if opts.dark
    @style = style.join " "

  </script>
</mdc-icon>
