<app-root>
  <!-- Simple header with scrollable tabs. -->
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <header class="mdl-layout__header">
      <div class="mdl-layout__header-row">
        <!-- Title -->
        <span class="mdl-layout-title">{opts.title ? opts.title : "opts.title"}</span>
      </div>
      <!-- Tabs -->
      <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
        <!-- <a href="#scroll-tab-1" class="mdl-layout__tab is-active">Tab 1</a> -->
        <a each={tab, i in tabs} onclick={tabChange(tab)} href={ "#scroll-tab-" + (i + 1) } class="mdl-layout__tab">{tab.name}</a>
      </div>
    </header>
    <div class="mdl-layout__drawer">
      <span class="mdl-layout-title">{ opts.title ? opts.title : "opts.title" }</span>
        <nav class="mdl-navigation">
          <a each={nav in navs} class="mdl-navigation__link" href={nav.link}>{nav.name}</a>
        </nav>
      </div>
    </div>
    <main class="mdl-layout__content">
      <section each={tab, i in tabs} class="mdl-layout__tab-panel is-active" id={ "scroll-tab-" + (1 + i) }>
        <div class="page-content">
          {tab.content}
        </div>
      </section>
    </main>
  </div>

  <script type="text/coffee">
    @tabChange = (tab)->
      (e)->
        console.log "Tab clicked", tab, e
    @tabs = ({name: "Tab #{t}", content: "Stuff #{t}"} for t in [0...4])
    @navs = ({link: "#", name: "Link #{l}"} for l in [0 ... 10])
  </script>
</app-root>
