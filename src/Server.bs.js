// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Http = require("http");

var contentType = {
  "Content-Type": "text/plain"
};

var server = Http.createServer(function (request, response) {
      console.log(request.url);
      console.log(request.method);
      response.writeHead(200, contentType);
      response.end("Hello, ReScript fans!");
    });

server.listen(3000, (function (param) {
        console.log("server is running on 3000");
      }));

exports.contentType = contentType;
exports.server = server;
/* server Not a pure module */
