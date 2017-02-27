<app-core>
  <app-toolbar title="My Application"></app-toolbar>
  <mdc-content ref="content">
    <p if={parent.view_state == 0}>State 1, list view!</p>
    <p if={parent.view_state == 1}>State 2, grid view!</p>
    <p if={parent.view_state == 2}>State 3, carousel view!</p>
  </mdc-content>
  <script type="text/coffee">
    @view_state = 0
    ctrl.on "view_change", (state)=>
      @view_state = state
      @update()
  </script>
</app-core>
