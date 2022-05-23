//https://www.npmjs.com/package/uuid

@module("uuid")
external nil: string = "NIL"

@module("uuid")
external v4: unit => string = "v4"

@module("uuid")
external validate: string => bool = "validate"

@module("uuid")
external version: string => string = "version"

@module("uuid")
external parse: string => array<int> = "parse"

@module("uuid")
external stringify: array<int> => string = "stringify"


Js.Console.log("NIL")
Js.Console.log(nil)

let id4 = v4()
Js.Console.log("\nv4()")
Js.Console.log(id4)

Js.Console.log("\nvalidate()")
Js.Console.log(validate(id4))

Js.Console.log("\nversion()")
Js.Console.log(version(id4))

let bytes = parse(id4)
Js.Console.log("\nparse()")
Js.Console.log(bytes)
Js.Console.log("size=" ++ Belt.Int.toString(bytes->Belt.Array.size))

Js.Console.log("\nstringify()")
Js.Console.log(stringify(bytes))
