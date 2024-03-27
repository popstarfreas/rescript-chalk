type t

type level =
  | @as(0) Disabled
  | @as(1) Enabled_16Color
  | @as(2) Enabled_256Color
  | @as(3) Enabled_TrueColor

@module external chalk: t = "chalk"

let levelFromInt: int => option<level>
let levelToInt: level => int

@get external levelRaw: t => int = "level"

let level: t => option<level>

let levelExn: t => level

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

module Keyword: Chalk__Keyword.S

module Modifier: {
  @get external reset: t => t = "reset"
  @get external bold: t => t = "bold"
  @get external dim: t => t = "dim"
  @get external italic: t => t = "italic"
  @get external underline: t => t = "underline"
  @get external inverse: t => t = "inverse"
  @get external hidden: t => t = "hidden"
  @get external strikethrough: t => t = "strikethrough"
  @get external visible: t => t = "visible"
}

module Color: {
  @get external black: t => t = "black"
  @get external red: t => t = "red"
  @get external green: t => t = "green"
  @get external yellow: t => t = "yellow"
  @get external blue: t => t = "blue"
  @get external magenta: t => t = "magenta"
  @get external cyan: t => t = "cyan"
  @get external white: t => t = "white"
  @get external blackBright: t => t = "blackBright"
  @get external gray: t => t = "gray"
  @get external grey: t => t = "grey"
  @get external redBright: t => t = "redBright"
  @get external greenBright: t => t = "greenBright"
  @get external yellowBright: t => t = "yellowBright"
  @get external blueBright: t => t = "blueBright"
  @get external magentaBright: t => t = "magentaBright"
  @get external cyanBright: t => t = "cyanBright"
  @get external whiteBright: t => t = "whiteBright"
}

module BgColor: {
  @get external bgBlack: t => t = "bgBlack"
  @get external bgRed: t => t = "bgRed"
  @get external bgGreen: t => t = "bgGreen"
  @get external bgYellow: t => t = "bgYellow"
  @get external bgBlue: t => t = "bgBlue"
  @get external bgMagenta: t => t = "bgMagenta"
  @get external bgCyan: t => t = "bgCyan"
  @get external bgWhite: t => t = "bgWhite"
  @get external bgBlackBright: t => t = "bgBlackBright"
  @get external bgGray: t => t = "bgGray"
  @get external bgGrey: t => t = "bgGrey"
  @get external bgRedBright: t => t = "bgRedBright"
  @get external bgGreenBright: t => t = "bgGreenBright"
  @get external bgYellowBright: t => t = "bgYellowBright"
  @get external bgBlueBright: t => t = "bgBlueBright"
  @get external bgMagentaBright: t => t = "bgMagentaBright"
  @get external bgCyanBright: t => t = "bgCyanBright"
  @get external bgWhiteBright: t => t = "bgWhiteBright"
}

module ColorModel: {
  @send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
  @send external hex: (t, string) => t = "hex"
  let keyword: (t, Keyword.t) => t
  @send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
  let hsv: (t, ~h: int, ~s: int, ~v: int) => t
  @send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
  @send external ansi: (t, int) => t = "ansi"
  @send external ansi256: (t, int) => t = "ansi256"
}

module BgColorModel: {
  @send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
  @send external bgHex: (t, string) => t = "bgHex"
  let bgKeyword: (t, Keyword.t) => t
  @send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
  let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t
  @send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
  @send external bgAnsi: (t, int) => t = "bgAnsi"
  @send external bgAnsi256: (t, int) => t = "bgAnsi256"
}

@get external reset: t => t = "reset"
@get external bold: t => t = "bold"
@get external dim: t => t = "dim"
@get external italic: t => t = "italic"
@get external underline: t => t = "underline"
@get external inverse: t => t = "inverse"
@get external hidden: t => t = "hidden"
@get external strikethrough: t => t = "strikethrough"
@get external visible: t => t = "visible"
@get external black: t => t = "black"
@get external red: t => t = "red"
@get external green: t => t = "green"
@get external yellow: t => t = "yellow"
@get external blue: t => t = "blue"
@get external magenta: t => t = "magenta"
@get external cyan: t => t = "cyan"
@get external white: t => t = "white"
@get external blackBright: t => t = "blackBright"
@get external gray: t => t = "gray"
@get external grey: t => t = "grey"
@get external redBright: t => t = "redBright"
@get external greenBright: t => t = "greenBright"
@get external yellowBright: t => t = "yellowBright"
@get external blueBright: t => t = "blueBright"
@get external magentaBright: t => t = "magentaBright"
@get external cyanBright: t => t = "cyanBright"
@get external whiteBright: t => t = "whiteBright"
@get external bgBlack: t => t = "bgBlack"
@get external bgRed: t => t = "bgRed"
@get external bgGreen: t => t = "bgGreen"
@get external bgYellow: t => t = "bgYellow"
@get external bgBlue: t => t = "bgBlue"
@get external bgMagenta: t => t = "bgMagenta"
@get external bgCyan: t => t = "bgCyan"
@get external bgWhite: t => t = "bgWhite"
@get external bgBlackBright: t => t = "bgBlackBright"
@get external bgGray: t => t = "bgGray"
@get external bgGrey: t => t = "bgGrey"
@get external bgRedBright: t => t = "bgRedBright"
@get external bgGreenBright: t => t = "bgGreenBright"
@get external bgYellowBright: t => t = "bgYellowBright"
@get external bgBlueBright: t => t = "bgBlueBright"
@get external bgMagentaBright: t => t = "bgMagentaBright"
@get external bgCyanBright: t => t = "bgCyanBright"
@get external bgWhiteBright: t => t = "bgWhiteBright"
@send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
@send external hex: (t, string) => t = "hex"
let keyword: (t, Keyword.t) => t
@send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
let hsv: (t, ~h: int, ~s: int, ~v: int) => t
@send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
@send external ansi: (t, int) => t = "ansi"
@send external ansi256: (t, int) => t = "ansi256"
@send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
@send external bgHex: (t, string) => t = "bgHex"
let bgKeyword: (t, Keyword.t) => t
@send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t
@send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
@send external bgAnsi: (t, int) => t = "bgAnsi"
@send external bgAnsi256: (t, int) => t = "bgAnsi256"
let apply: (t, string) => string

let newChalkInstance: (t, ~level: option<level>) => t
