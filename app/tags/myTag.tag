<my-tag>
  <p>Names:</p>
  <ol>
    <li each={n in names}>{n}</li>
  </ol>
  <!-- <form onsubmit={done}>
    <input type="text" ref="thing" value="">
    <button>Clickie!</button>
  </form> -->

  <script type="text/coffee">
    @names = []
    @add = (elem)->
      console.log "adding", elem
      @names.push elem
      @update()
    # @names = []
    # @done = (e)->
    #   e.preventDefault()
    #   @names.push @refs.thing.value
    #   @refs.thing.value = ""
  </script>
</my-tag>
