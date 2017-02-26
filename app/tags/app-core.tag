<app-core>
  <mdc-toolbar title="My Application">
    <div onclick={parent.set_state(0)} href="#" class="material-icons title-icon">view_module</div>
    <div onclick={parent.set_state(1)} href="#" class="material-icons title-icon">view_carousel</div>
    <div onclick={parent.set_state(2)} href="#" class="material-icons title-icon">view_list</div>
  </mdc-toolbar>
  <mdc-content>
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est.</p>
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est.</p>
  </mdc-content>
  <script type="text/coffee">
    @view_state = 0 # List view / grid etc
    @set_state = (state)->
      (e)->
        if state != @view_state
          @view_state = state
          console.log "State changed", @view_state
  </script>
</app-core>
