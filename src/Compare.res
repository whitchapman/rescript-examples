let cmp = (x1, x2) => {
  let y = Pervasives.compare(x1, x2)
  Js.Console.log(y)
  y
}

let z1 = cmp(1, 1) //0
let z2 = cmp(1, 0) //1
let z3 = cmp(0, 1) //-1

let a1 = cmp(0.1, 1.1) //-1
