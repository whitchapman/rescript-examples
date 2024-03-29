// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Uuid = require("uuid");

console.log("NIL");

console.log(Uuid.NIL);

var id4 = Uuid.v4();

console.log("\nv4()");

console.log(id4);

console.log("\nvalidate()");

console.log(Uuid.validate(id4));

console.log("\nversion()");

console.log(Uuid.version(id4));

var bytes = Uuid.parse(id4);

console.log("\nparse()");

console.log(bytes);

console.log("size=" + String(bytes.length));

console.log("\nstringify()");

console.log(Uuid.stringify(bytes));

exports.id4 = id4;
exports.bytes = bytes;
/*  Not a pure module */
