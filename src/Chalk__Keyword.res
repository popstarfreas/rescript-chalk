type keyword = [
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

module type S = {
  type t = keyword

  external toString: t => string = "%identity"
  let fromString: string => option<t>
  external fromStringUnsafe: string => t = "%identity"

  let equal: (t, t) => bool
  let eq: (t, t) => bool

  let compare: (t, t) => int
  let cmp: (t, t) => int

  external show: t => string = "%identity"

  module Enum: {
    let first: t
    let last: t
    let next: t => option<t>
    let prev: t => option<t>
    let toInt: t => int
    let fromInt: int => option<t>
  }
}

module Impl = {
  type t = keyword

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

  let fromString = str => {
    open Internal
    switch Js.Dict.get(__map, str) {
    | None => None
    | Some(index) => Some(Belt.Array.getUnsafe(__array, index))
    }
  }

  external show: t => string = "%identity"

  let equal: (t, t) => bool = (a, b) => a === b
  let eq = equal

  let compare: (t, t) => int = Pervasives.compare
  let cmp = compare

  module Enum = {
    open Internal

    let first: t = #aliceblue
    let last: t = #yellowgreen

    let next: t => option<t> = t => {
      let index = Js.Dict.unsafeGet(__map, toString(t))
      Belt.Array.get(__array, index + 1)
    }

    let prev: t => option<t> = t => {
      let index = Js.Dict.unsafeGet(__map, toString(t))
      Belt.Array.get(__array, index - 1)
    }

    let fromInt: int => option<t> = n => {
      Belt.Array.get(__array, n)
    }

    let toInt: t => int = t => {
      Js.Dict.unsafeGet(__map, toString(t))
    }
  }
}

include (Impl: S)
