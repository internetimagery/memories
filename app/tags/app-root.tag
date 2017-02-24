<app-root>
  <!-- Simple header with scrollable tabs. -->
  <header class="mdc-toolbar mdc-toolbar--fixed">
    <section class="mdc-toolbar__section mdc-toolbar__section--align-start">
      <a class="material-icons">menu</a>
      <span class="mdc-toolbar__title">Title</span>
    </section>
    <section class="mdc-toolbar__section mdc-toolbar__section--align-end" role="toolbar">
      <a class="material-icons" aria-label="Download" alt="Download">file_download</a>
      <a class="material-icons" aria-label="Print this page" alt="Print this page">print</a>
      <a class="material-icons" aria-label="Bookmark this page" alt="Bookmark this page">bookmark</a>
    </section>
  </header>
  <main>

    <div class="mdc-toolbar-fixed-adjust">
      <p class="demo-paragraph">
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est.
      </p>
      <p class="demo-paragraph">
        Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est.
      </p>
    </div>
  </main>

  <script type="text/coffee">
    # Set up our tabs!
    # @tabs = {
    #   view_list:
    #     active: true
    #     content: "Some content here"
    #     clicked: (e)=>
    #       @refs.content.innerHTML = "List!"
    #   view_module:
    #     active: false
    #     content: "Some content here"
    #     clicked: (e)=>
    #       @refs.content.innerHTML = "Grid!"
    #   view_carousel:
    #     active: false
    #     content: "Some content here"
    #     clicked: (e)=>
    #       @refs.content.innerHTML = "Flip through!"
    # }
    # @on "mount", @tabs.view_list.clicked

  </script>
</app-root>
