<mdc-toolbar>
  <header class="mdc-toolbar mdc-toolbar--fixed">
    <section class="mdc-toolbar__section mdc-toolbar__section--align-start">
      <span class="mdc-toolbar__title">{opts.title ? opts.title : "opts.title"}</span>
    </section>

    <section class="mdc-toolbar__section mdc-toolbar__section--align-end" role="toolbar">
      <yield></yield>
    </section>
  </header>

  <style media="screen">
    .title-icon {
      text-decoration: none;
      cursor: pointer;
      padding: 0px 8px 0px 0px;
      color: white;
    }
  </style>
</mdc-toolbar>
