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

    let __dict = Js.Dict.empty()
    let __bottomIndex = 0
    let __topIndex = Belt.Array.length(__array) - 1

    for i in __bottomIndex to __topIndex {
      Js.Dict.set(__dict, toString(Belt.Array.getUnsafe(__array, i)), i)
    }
  }

  let fromString = str => {
    open Internal
    switch Js.Dict.get(__dict, str) {
    | None => None
    | Some(index) => Some(Belt.Array.getUnsafe(__array, index))
    }
  }

  let equal: (t, t) => bool = (a, b) => a === b
  let eq = equal

  let compare: (t, t) => int = (a, b) => {
    if a === b {
      0
    } else if a < b {
      -1
    } else {
      1
    }
  }
  let cmp = compare
}

include (Impl: S)
