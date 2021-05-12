addEventListener('fetch', event => {
    event.respondWith(handle(event.request, event.actorState))
  })
   
  async function handle(request, actorState) {
    if (actorState.transient.counter === undefined) {
      actorState.transient.counter = 0
    }
    return new Response(actorState.transient.counter++)
  }