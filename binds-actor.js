
addEventListener('fetch', event => {
    event.respondWith(handleRequest(event.request))
  })
   
  async function handleRequest(request) {
    // Read a value from the actor named "actor1"
    let actor = await actor_namespace.get("actor-script")
    let resp = await actor.fetch()
    //let val = await resp.text()
   
    // Read a value from the actor named "some-other-actor"
    //let otherActor = await ACTOR_NS.get("some-other-actor")
   // resp = await otherActor.fetch("next-val")
    //let otherVal = await resp.text()
   
    // Get another value from the first actor
    //resp = await actor.fetch("next-val")
    //let finalVal = await resp.text()
   
    return new Response("got values from actor")
  }