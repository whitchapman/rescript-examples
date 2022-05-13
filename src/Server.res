// example ported from
// "Web Development with Node and Express", 2nd edition
// by Ethan Brown

// bindings to the node API
type response
//type req
type server

type request = {
  url: string,
  method: string,
}

@module("http")
@val external url: string = "url"

@module("http")
external createServer : ( @uncurry (request, response) => unit ) => server = "createServer"

@send external end: (response, string) => unit = "end"
@send external writeHead: (response, int, 'a) => unit = "writeHead"

@send external listen: (server, int, @uncurry unit => unit) => unit = "listen"

// server code
let contentType = { "Content-Type": "text/plain" }

let server = createServer( (request, response) => {
  Js.log(request.url)
  Js.log(request.method)
  response->writeHead(200, contentType)
  response->end("Hello, ReScript fans!")
})

server->listen(3000, () => Js.log("server is running on 3000"))
