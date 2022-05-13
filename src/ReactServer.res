type response
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
let contentType = { "Content-Type": "text/html" }

let server = createServer( (request, response) => {
  let url = RescriptReactRouter.useUrl()
  Js.log("Request:")
  Js.log(url)
  Js.log(request.url)
  Js.log(request.method)
  response->writeHead(200, contentType)
  response->end("This is a failed attempt to return a React component!")
})

server->listen(3000, () => Js.log("server is running on 3000"))
