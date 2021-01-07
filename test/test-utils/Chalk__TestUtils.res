let keywordArray: array<Chalk__Keyword.t> = [
  #aliceblue,
  #antiquewhite,
  #aqua,
  #aquamarine,
  #azure,
  #beige,
  #bisque,
  #black,
  #blanchedalmond,
  #blue,
  #blueviolet,
  #brown,
  #burlywood,
  #cadetblue,
  #chartreuse,
  #chocolate,
  #coral,
  #cornflowerblue,
  #cornsilk,
  #crimson,
  #cyan,
  #darkblue,
  #darkcyan,
  #darkgoldenrod,
  #darkgray,
  #darkgreen,
  #darkgrey,
  #darkkhaki,
  #darkmagenta,
  #darkolivegreen,
  #darkorange,
  #darkorchid,
  #darkred,
  #darksalmon,
  #darkseagreen,
  #darkslateblue,
  #darkslategray,
  #darkslategrey,
  #darkturquoise,
  #darkviolet,
  #deeppink,
  #deepskyblue,
  #dimgray,
  #dimgrey,
  #dodgerblue,
  #firebrick,
  #floralwhite,
  #forestgreen,
  #fuchsia,
  #gainsboro,
  #ghostwhite,
  #gold,
  #goldenrod,
  #gray,
  #green,
  #greenyellow,
  #grey,
  #honeydew,
  #hotpink,
  #indianred,
  #indigo,
  #ivory,
  #khaki,
  #lavender,
  #lavenderblush,
  #lawngreen,
  #lemonchiffon,
  #lightblue,
  #lightcoral,
  #lightcyan,
  #lightgoldenrodyellow,
  #lightgray,
  #lightgreen,
  #lightgrey,
  #lightpink,
  #lightsalmon,
  #lightseagreen,
  #lightskyblue,
  #lightslategray,
  #lightslategrey,
  #lightsteelblue,
  #lightyellow,
  #lime,
  #limegreen,
  #linen,
  #magenta,
  #maroon,
  #mediumaquamarine,
  #mediumblue,
  #mediumorchid,
  #mediumpurple,
  #mediumseagreen,
  #mediumslateblue,
  #mediumspringgreen,
  #mediumturquoise,
  #mediumvioletred,
  #midnightblue,
  #mintcream,
  #mistyrose,
  #moccasin,
  #navajowhite,
  #navy,
  #oldlace,
  #olive,
  #olivedrab,
  #orange,
  #orangered,
  #orchid,
  #palegoldenrod,
  #palegreen,
  #paleturquoise,
  #palevioletred,
  #papayawhip,
  #peachpuff,
  #peru,
  #pink,
  #plum,
  #powderblue,
  #purple,
  #red,
  #rosybrown,
  #royalblue,
  #saddlebrown,
  #salmon,
  #sandybrown,
  #seagreen,
  #seashell,
  #sienna,
  #silver,
  #skyblue,
  #slateblue,
  #slategray,
  #slategrey,
  #snow,
  #springgreen,
  #steelblue,
  #tan,
  #teal,
  #thistle,
  #tomato,
  #turquoise,
  #violet,
  #wheat,
  #white,
  #whitesmoke,
  #yellow,
  #yellowgreen,
]
module Rand = {
  let randomSeed = 5230
  Random.init(randomSeed)

  %%private(@ocaml.warning("-3") let maxIntRange = Js.Math.pow_int(~base=2, ~exp=30) - 1)

  let x = Js.Math.pow_float(~base=2., ~exp=30.)->int_of_float

  %%private(let maxCodePoint = 0x10ffff)

  %%private(
    let randomInt = {
      () => {
        Random.int(maxIntRange)
      }
    }
  )

  %%private(
    let randomChar = {
      () => {
        let codePoint = Random.int(maxCodePoint)
        Js.String2.fromCodePoint(codePoint)
      }
    }
  )

  %%private(
    let randomString = {
      let randomCharU = (. _) => {
        randomChar()
      }
      (~minLength: int, ~maxLength: int) => {
        let upperBound = maxLength - minLength
        let size = if upperBound > 0 && upperBound <= maxIntRange {
          Random.int(upperBound) + minLength
        } else {
          1
        }
        let arr = Belt.Array.makeByU(size, randomCharU)
        Js.Array2.joinWith(arr, "")
      }
    }
  )

  let int = randomInt
  let char = randomChar
  let string = randomString
  let bool = Random.bool
}

let tryCatch: (unit => 'a) => result<'a, exn> = thunk => {
  try Ok(thunk()) catch {
  | err =>
    Js.log(err)
    Error(err)
  }
}

