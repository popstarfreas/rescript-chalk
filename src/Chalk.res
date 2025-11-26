type t = string => string

type level =
  | @as(0) Disabled
  | @as(1) Enabled_16Color
  | @as(2) Enabled_256Color
  | @as(3) Enabled_TrueColor

let levelFromInt = n =>
  switch n {
  | 0 => Some(Disabled)
  | 1 => Some(Enabled_16Color)
  | 2 => Some(Enabled_256Color)
  | 3 => Some(Enabled_TrueColor)
  | _ => None
  }
let levelToInt = l =>
  switch l {
  | Disabled => 0
  | Enabled_16Color => 1
  | Enabled_256Color => 2
  | Enabled_TrueColor => 3
  }

type instanceOptions = {level: int}

@module external chalk: t = "chalk"

@get external levelRaw: t => int = "level"

let level: t => option<level> = t => levelFromInt(levelRaw(t))

let levelExn: t => level = t => {
  switch levelFromInt(levelRaw(t)) {
  | Some(x) => x
  | None => throw(Failure("Chalk.level: Unexpected value for the color support level"))
  }
}

@send external newChalkInstance: (t, option<instanceOptions>) => t = "Instance"

let newChalkInstance: (t, ~level: option<level>) => t = (t, ~level) =>
  switch level {
  | Some(lvl) => newChalkInstance(t, Some({level: (lvl :> int)}))
  | None => newChalkInstance(t, None)
  }

module Keyword = Chalk__Keyword

type keyword = Keyword.t

module Modifier = {
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

module Color = {
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

module BgColor = {
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

module ColorModel = {
  @send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
  @send external hex: (t, string) => t = "hex"
  @send external keyword: (t, Keyword.t) => t = "keyword"
  @send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
  @send external hsv: (t, ~h: int, ~s: int, ~v: int) => t = "hsv"
  let hsv: (t, ~h: int, ~s: int, ~v: int) => t = (t, ~h, ~s, ~v) =>
    switch t->hsv(~h, ~s, ~v) {
    | exception _ => t
    | value => value
    }
  @send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
  @send external ansi: (t, int) => t = "ansi"
  @send external ansi256: (t, int) => t = "ansi256"
}

module BgColorModel = {
  @send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
  @send external bgHex: (t, string) => t = "bgHex"
  @send external bgKeyword: (t, Keyword.t) => t = "bgKeyword"
  @send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
  @send external bgHsv: (t, ~h: int, ~s: int, ~v: int) => t = "bgHsv"
  let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t = (t, ~h, ~s, ~v) =>
    switch t->bgHsv(~h, ~s, ~v) {
    | exception _ => t
    | value => value
    }
  @send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
  @send external bgAnsi: (t, int) => t = "bgAnsi"
  @send external bgAnsi256: (t, int) => t = "bgAnsi256"
}

include Modifier
include Color
include BgColor
include ColorModel
include BgColorModel

let apply: (t, string) => string = (t, str) => t(str)
