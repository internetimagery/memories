<app-toolbar>
  <header class="mdc-toolbar mdc-toolbar--fixed" role="toolbar">
    <section class="mdc-toolbar__section mdc-toolbar__section--align-start">
      <span class="mdc-toolbar__title">{opts.title ? opts.title : "opts.title"}</span>
    </section>

    <section class="mdc-toolbar__section">
      <div onclick={upload_request} class="material-icons title-icon">folder_open</div>
    </section>

    <section class="mdc-toolbar__section mdc-toolbar__section--align-end">
      <div onclick={view_request(0)} class="material-icons title-icon">view_module</div>
      <div onclick={view_request(1)} class="material-icons title-icon">view_carousel</div>
      <div onclick={view_request(2)} class="material-icons title-icon">view_list</div>
    </section>
  </header>

  <script type="text/coffee">
    @upload_request = (e)->
      ctrl.trigger "upload_request"
    @view_request = (view)-> (e)->
      ctrl.trigger "view_request", view
  </script>

  <style>
    .title-icon {
      text-decoration: none;
      cursor: pointer;
      padding: 0px 8px 0px 0px;
      color: white;
    }
  </style>
</app-toolbar>
