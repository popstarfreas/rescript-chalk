type t

type level =
  | Disabled
  | Enabled_16Color
  | Enabled_256Color
  | Enabled_TrueColor

@module external chalk: t = "chalk"

let levelFromInt: int => option<level>
let levelToInt: level => int

@bs.get external levelRaw: t => int = "level"

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
  @bs.get external reset: t => t = "reset"
  @bs.get external bold: t => t = "bold"
  @bs.get external dim: t => t = "dim"
  @bs.get external italic: t => t = "italic"
  @bs.get external underline: t => t = "underline"
  @bs.get external inverse: t => t = "inverse"
  @bs.get external hidden: t => t = "hidden"
  @bs.get external strikethrough: t => t = "strikethrough"
  @bs.get external visible: t => t = "visible"
}

module Color: {
  @bs.get external black: t => t = "black"
  @bs.get external red: t => t = "red"
  @bs.get external green: t => t = "green"
  @bs.get external yellow: t => t = "yellow"
  @bs.get external blue: t => t = "blue"
  @bs.get external magenta: t => t = "magenta"
  @bs.get external cyan: t => t = "cyan"
  @bs.get external white: t => t = "white"
  @bs.get external blackBright: t => t = "blackBright"
  @bs.get external gray: t => t = "gray"
  @bs.get external grey: t => t = "grey"
  @bs.get external redBright: t => t = "redBright"
  @bs.get external greenBright: t => t = "greenBright"
  @bs.get external yellowBright: t => t = "yellowBright"
  @bs.get external blueBright: t => t = "blueBright"
  @bs.get external magentaBright: t => t = "magentaBright"
  @bs.get external cyanBright: t => t = "cyanBright"
  @bs.get external whiteBright: t => t = "whiteBright"
}

module BgColor: {
  @bs.get external bgBlack: t => t = "bgBlack"
  @bs.get external bgRed: t => t = "bgRed"
  @bs.get external bgGreen: t => t = "bgGreen"
  @bs.get external bgYellow: t => t = "bgYellow"
  @bs.get external bgBlue: t => t = "bgBlue"
  @bs.get external bgMagenta: t => t = "bgMagenta"
  @bs.get external bgCyan: t => t = "bgCyan"
  @bs.get external bgWhite: t => t = "bgWhite"
  @bs.get external bgBlackBright: t => t = "bgBlackBright"
  @bs.get external bgGray: t => t = "bgGray"
  @bs.get external bgGrey: t => t = "bgGrey"
  @bs.get external bgRedBright: t => t = "bgRedBright"
  @bs.get external bgGreenBright: t => t = "bgGreenBright"
  @bs.get external bgYellowBright: t => t = "bgYellowBright"
  @bs.get external bgBlueBright: t => t = "bgBlueBright"
  @bs.get external bgMagentaBright: t => t = "bgMagentaBright"
  @bs.get external bgCyanBright: t => t = "bgCyanBright"
  @bs.get external bgWhiteBright: t => t = "bgWhiteBright"
}

module ColorModel: {
  @bs.send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
  @bs.send external hex: (t, string) => t = "hex"
  let keyword: (t, Keyword.t) => t
  @bs.send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
  let hsv: (t, ~h: int, ~s: int, ~v: int) => t
  @bs.send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
  @bs.send external ansi: (t, int) => t = "ansi"
  @bs.send external ansi256: (t, int) => t = "ansi256"
}

module BgColorModel: {
  @bs.send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
  @bs.send external bgHex: (t, string) => t = "bgHex"
  let bgKeyword: (t, Keyword.t) => t
  @bs.send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
  let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t
  @bs.send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
  @bs.send external bgAnsi: (t, int) => t = "bgAnsi"
  @bs.send external bgAnsi256: (t, int) => t = "bgAnsi256"
}

@bs.get external reset: t => t = "reset"
@bs.get external bold: t => t = "bold"
@bs.get external dim: t => t = "dim"
@bs.get external italic: t => t = "italic"
@bs.get external underline: t => t = "underline"
@bs.get external inverse: t => t = "inverse"
@bs.get external hidden: t => t = "hidden"
@bs.get external strikethrough: t => t = "strikethrough"
@bs.get external visible: t => t = "visible"
@bs.get external black: t => t = "black"
@bs.get external red: t => t = "red"
@bs.get external green: t => t = "green"
@bs.get external yellow: t => t = "yellow"
@bs.get external blue: t => t = "blue"
@bs.get external magenta: t => t = "magenta"
@bs.get external cyan: t => t = "cyan"
@bs.get external white: t => t = "white"
@bs.get external blackBright: t => t = "blackBright"
@bs.get external gray: t => t = "gray"
@bs.get external grey: t => t = "grey"
@bs.get external redBright: t => t = "redBright"
@bs.get external greenBright: t => t = "greenBright"
@bs.get external yellowBright: t => t = "yellowBright"
@bs.get external blueBright: t => t = "blueBright"
@bs.get external magentaBright: t => t = "magentaBright"
@bs.get external cyanBright: t => t = "cyanBright"
@bs.get external whiteBright: t => t = "whiteBright"
@bs.get external bgBlack: t => t = "bgBlack"
@bs.get external bgRed: t => t = "bgRed"
@bs.get external bgGreen: t => t = "bgGreen"
@bs.get external bgYellow: t => t = "bgYellow"
@bs.get external bgBlue: t => t = "bgBlue"
@bs.get external bgMagenta: t => t = "bgMagenta"
@bs.get external bgCyan: t => t = "bgCyan"
@bs.get external bgWhite: t => t = "bgWhite"
@bs.get external bgBlackBright: t => t = "bgBlackBright"
@bs.get external bgGray: t => t = "bgGray"
@bs.get external bgGrey: t => t = "bgGrey"
@bs.get external bgRedBright: t => t = "bgRedBright"
@bs.get external bgGreenBright: t => t = "bgGreenBright"
@bs.get external bgYellowBright: t => t = "bgYellowBright"
@bs.get external bgBlueBright: t => t = "bgBlueBright"
@bs.get external bgMagentaBright: t => t = "bgMagentaBright"
@bs.get external bgCyanBright: t => t = "bgCyanBright"
@bs.get external bgWhiteBright: t => t = "bgWhiteBright"
@bs.send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
@bs.send external hex: (t, string) => t = "hex"
let keyword: (t, Keyword.t) => t
@bs.send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
let hsv: (t, ~h: int, ~s: int, ~v: int) => t
@bs.send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
@bs.send external ansi: (t, int) => t = "ansi"
@bs.send external ansi256: (t, int) => t = "ansi256"
@bs.send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
@bs.send external bgHex: (t, string) => t = "bgHex"
let bgKeyword: (t, Keyword.t) => t
@bs.send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t
@bs.send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
@bs.send external bgAnsi: (t, int) => t = "bgAnsi"
@bs.send external bgAnsi256: (t, int) => t = "bgAnsi256"

let applyU: (. t, string) => string
let applyManyU: (. t, array<string>) => string

let apply: (t, string) => string
let applyMany: (t, array<string>) => string

let newChalkInstance: (t, ~level: option<level>) => t
