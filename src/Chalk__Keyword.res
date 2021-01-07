type t = [
  | #aliceblue
  | #antiquewhite
  | #aqua
  | #aquamarine
  | #azure
  | #beige
  | #bisque
  | #black
  | #blanchedalmond
  | #blue
  | #blueviolet
  | #brown
  | #burlywood
  | #cadetblue
  | #chartreuse
  | #chocolate
  | #coral
  | #cornflowerblue
  | #cornsilk
  | #crimson
  | #cyan
  | #darkblue
  | #darkcyan
  | #darkgoldenrod
  | #darkgray
  | #darkgreen
  | #darkgrey
  | #darkkhaki
  | #darkmagenta
  | #darkolivegreen
  | #darkorange
  | #darkorchid
  | #darkred
  | #darksalmon
  | #darkseagreen
  | #darkslateblue
  | #darkslategray
  | #darkslategrey
  | #darkturquoise
  | #darkviolet
  | #deeppink
  | #deepskyblue
  | #dimgray
  | #dimgrey
  | #dodgerblue
  | #firebrick
  | #floralwhite
  | #forestgreen
  | #fuchsia
  | #gainsboro
  | #ghostwhite
  | #gold
  | #goldenrod
  | #gray
  | #green
  | #greenyellow
  | #grey
  | #honeydew
  | #hotpink
  | #indianred
  | #indigo
  | #ivory
  | #khaki
  | #lavender
  | #lavenderblush
  | #lawngreen
  | #lemonchiffon
  | #lightblue
  | #lightcoral
  | #lightcyan
  | #lightgoldenrodyellow
  | #lightgray
  | #lightgreen
  | #lightgrey
  | #lightpink
  | #lightsalmon
  | #lightseagreen
  | #lightskyblue
  | #lightslategray
  | #lightslategrey
  | #lightsteelblue
  | #lightyellow
  | #lime
  | #limegreen
  | #linen
  | #magenta
  | #maroon
  | #mediumaquamarine
  | #mediumblue
  | #mediumorchid
  | #mediumpurple
  | #mediumseagreen
  | #mediumslateblue
  | #mediumspringgreen
  | #mediumturquoise
  | #mediumvioletred
  | #midnightblue
  | #mintcream
  | #mistyrose
  | #moccasin
  | #navajowhite
  | #navy
  | #oldlace
  | #olive
  | #olivedrab
  | #orange
  | #orangered
  | #orchid
  | #palegoldenrod
  | #palegreen
  | #paleturquoise
  | #palevioletred
  | #papayawhip
  | #peachpuff
  | #peru
  | #pink
  | #plum
  | #powderblue
  | #purple
  | #red
  | #rosybrown
  | #royalblue
  | #saddlebrown
  | #salmon
  | #sandybrown
  | #seagreen
  | #seashell
  | #sienna
  | #silver
  | #skyblue
  | #slateblue
  | #slategray
  | #slategrey
  | #snow
  | #springgreen
  | #steelblue
  | #tan
  | #teal
  | #thistle
  | #tomato
  | #turquoise
  | #violet
  | #wheat
  | #white
  | #whitesmoke
  | #yellow
  | #yellowgreen
]

external toString: t => string = "%identity"
external fromStringUnsafe: string => t = "%identity"

module Internal = {
  let __array: array<t> = [
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

  let __map = Js.Dict.empty()
  let __bottomIndex = 0
  let __topIndex = Belt.Array.length(__array) - 1

  for i in __bottomIndex to __topIndex {
    Js.Dict.set(__map, toString(Belt.Array.getUnsafe(__array, i)), i)
  }
}

let equal: (t, t) => bool = (a, b) => a === b
let eq = equal

let compare: (t, t) => int = Pervasives.compare
let cmp = compare

let show: t => string = toString

let eq = eq

let fromString = (str) => {
  open Internal
  switch (Js.Dict.get(__map, str)) {
    | None => None
    | Some(index) => Some(Belt.Array.getUnsafe(__array, index))
  }
}

module Enum = {
  open Internal

  let first: t = #aliceblue
  let bottom: t = first

  let last: t = #yellowgreen
  let top: t = last

  let next: t => option<t> = t => {
    let index = Js.Dict.unsafeGet(__map, toString(t))
    Some(Belt.Array.getUnsafe(__array, index + 1))
  }

  let prev: t => option<t> = t => {
    let index = Js.Dict.unsafeGet(__map, toString(t))
    Some(Belt.Array.getUnsafe(__array, index - 1))
  }
}

