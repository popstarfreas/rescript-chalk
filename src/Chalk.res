type t

@deriving(jsConverter)
type level =
  | @bs.as(0) Disabled
  | @bs.as(1) Enabled_16Color
  | @bs.as(2) Enabled_256Color
  | @bs.as(3) Enabled_TrueColor

let levelFromInt = levelFromJs
let levelToInt = levelToJs

type instanceOptions = {level: int}

@module external chalk: t = "chalk"

@bs.get external levelRaw: t => int = "level"

let level: t => option<level> = t => levelFromJs(levelRaw(t))

let levelExn: t => level = t => {
  switch levelFromJs(levelRaw(t)) {
  | Some(x) => x
  | None => raise(Failure(j`Chalk.level: Unexpected value for the color support level`))
  }
}

@bs.send external newChalkInstance: (t, option<instanceOptions>) => t = "Instance"

let newChalkInstance: (t, ~level: option<level>) => t = (t, ~level) =>
  switch level {
  | Some(lvl) => newChalkInstance(t, Some({level: levelToJs(lvl)}))
  | None => newChalkInstance(t, None)
  }

module Keyword = Chalk__Keyword

type keyword = Keyword.t

module Modifier = {
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

module Color = {
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

module BgColor = {
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

module ColorModel = {
  @bs.send external rgb: (t, ~r: int, ~g: int, ~b: int) => t = "rgb"
  @bs.send external hex: (t, string) => t = "hex"
  @bs.send external keyword: (t, Keyword.t) => t = "keyword"
  @bs.send external hsl: (t, ~h: int, ~s: int, ~l: int) => t = "hsl"
  @bs.send external hsv: (t, ~h: int, ~s: int, ~v: int) => t = "hsv"
  let hsv: (t, ~h: int, ~s: int, ~v: int) => t = (t, ~h, ~s, ~v) =>
    switch t->hsv(~h, ~s, ~v) {
    | exception _ => t
    | value => value
    }
  @bs.send external hwb: (t, ~h: int, ~w: int, ~b: int) => t = "hwb"
  @bs.send external ansi: (t, int) => t = "ansi"
  @bs.send external ansi256: (t, int) => t = "ansi256"
}

module BgColorModel = {
  @bs.send external bgRgb: (t, ~r: int, ~g: int, ~b: int) => t = "bgRgb"
  @bs.send external bgHex: (t, string) => t = "bgHex"
  @bs.send external bgKeyword: (t, Keyword.t) => t = "bgKeyword"
  @bs.send external bgHsl: (t, ~h: int, ~s: int, ~l: int) => t = "bgHsl"
  @bs.send external bgHsv: (t, ~h: int, ~s: int, ~v: int) => t = "bgHsv"
  let bgHsv: (t, ~h: int, ~s: int, ~v: int) => t = (t, ~h, ~s, ~v) =>
    switch t->bgHsv(~h, ~s, ~v) {
    | exception _ => t
    | value => value
    }
  @bs.send external bgHwb: (t, ~h: int, ~w: int, ~b: int) => t = "bgHwb"
  @bs.send external bgAnsi: (t, int) => t = "bgAnsi"
  @bs.send external bgAnsi256: (t, int) => t = "bgAnsi256"
}

include Modifier
include Color
include BgColor
include ColorModel
include BgColorModel

external toFunction: (t, . string) => string = "%identity"
external toFunctionMany: (t, . array<string>) => string = "%identity"

let applyStyleU: (. t, string) => string = (. t, str) => toFunction(t)(. str)
let applyStyleManyU: (. t, array<string>) => string = (. t, strArray) =>
  toFunctionMany(t)(. strArray)

let applyStyle: (t, string) => string = (t, str) => toFunction(t)(. str)
let applyStyleMany: (t, array<string>) => string = (t, strArray) => toFunctionMany(t)(. strArray)
