open Jest
open ExpectJs

describe("Chalk Bindings", () => {
  let text = "Hello World"
  open Chalk

  let eval = c => {
    switch toFunction(c)(. text) {
    | exception e =>
      Js.log(e)
      false
    | x => Js.typeof(x) === "string"
    }
  }

  test("Chalk.reset", () => {
    let result = eval(chalk->reset)
    expect(result) |> toBe(true)
  })

  test("Chalk.bold", () => {
    let result = eval(chalk->bold)
    expect(result) |> toBe(true)
  })

  test("Chalk.dim", () => {
    let result = eval(chalk->dim)
    expect(result) |> toBe(true)
  })

  test("Chalk.italic", () => {
    let result = eval(chalk->italic)
    expect(result) |> toBe(true)
  })

  test("Chalk.underline", () => {
    let result = eval(chalk->underline)
    expect(result) |> toBe(true)
  })

  test("Chalk.inverse", () => {
    let result = eval(chalk->inverse)
    expect(result) |> toBe(true)
  })

  test("Chalk.hidden", () => {
    let result = eval(chalk->hidden)
    expect(result) |> toBe(true)
  })

  test("Chalk.strikethrough", () => {
    let result = eval(chalk->strikethrough)
    expect(result) |> toBe(true)
  })

  test("Chalk.visible", () => {
    let result = eval(chalk->visible)
    expect(result) |> toBe(true)
  })

  test("Chalk.black", () => {
    let result = eval(chalk->black)
    expect(result) |> toBe(true)
  })

  test("Chalk.red", () => {
    let result = eval(chalk->red)
    expect(result) |> toBe(true)
  })

  test("Chalk.green", () => {
    let result = eval(chalk->green)
    expect(result) |> toBe(true)
  })

  test("Chalk.yellow", () => {
    let result = eval(chalk->yellow)
    expect(result) |> toBe(true)
  })

  test("Chalk.blue", () => {
    let result = eval(chalk->blue)
    expect(result) |> toBe(true)
  })

  test("Chalk.magenta", () => {
    let result = eval(chalk->magenta)
    expect(result) |> toBe(true)
  })

  test("Chalk.cyan", () => {
    let result = eval(chalk->cyan)
    expect(result) |> toBe(true)
  })

  test("Chalk.white", () => {
    let result = eval(chalk->white)
    expect(result) |> toBe(true)
  })

  test("Chalk.blackBright", () => {
    let result = eval(chalk->blackBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.gray", () => {
    let result = eval(chalk->gray)
    expect(result) |> toBe(true)
  })

  test("Chalk.grey", () => {
    let result = eval(chalk->grey)
    expect(result) |> toBe(true)
  })

  test("Chalk.redBright", () => {
    let result = eval(chalk->redBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.greenBright", () => {
    let result = eval(chalk->greenBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.yellowBright", () => {
    let result = eval(chalk->yellowBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.blueBright", () => {
    let result = eval(chalk->blueBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.magentaBright", () => {
    let result = eval(chalk->magentaBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.cyanBright", () => {
    let result = eval(chalk->cyanBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.whiteBright", () => {
    let result = eval(chalk->whiteBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlack", () => {
    let result = eval(chalk->bgBlack)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRed", () => {
    let result = eval(chalk->bgRed)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGreen", () => {
    let result = eval(chalk->bgGreen)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgYellow", () => {
    let result = eval(chalk->bgYellow)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlue", () => {
    let result = eval(chalk->bgBlue)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgMagenta", () => {
    let result = eval(chalk->bgMagenta)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgCyan", () => {
    let result = eval(chalk->bgCyan)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgWhite", () => {
    let result = eval(chalk->bgWhite)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlackBright", () => {
    let result = eval(chalk->bgBlackBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGray", () => {
    let result = eval(chalk->bgGray)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGrey", () => {
    let result = eval(chalk->bgGrey)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRedBright", () => {
    let result = eval(chalk->bgRedBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGreenBright", () => {
    let result = eval(chalk->bgGreenBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgYellowBright", () => {
    let result = eval(chalk->bgYellowBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlueBright", () => {
    let result = eval(chalk->bgBlueBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgMagentaBright", () => {
    let result = eval(chalk->bgMagentaBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgCyanBright", () => {
    let result = eval(chalk->bgCyanBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgWhiteBright", () => {
    let result = eval(chalk->bgWhiteBright)
    expect(result) |> toBe(true)
  })

  test("Chalk.rgb", () => {
    let result = eval(chalk->rgb(~r=0, ~g=0, ~b=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.hex", () => {
    let result = eval(chalk->hex("#000000"))
    expect(result) |> toBe(true)
  })

  test("Chalk.keyword", () => {
    let result = eval(chalk->keyword("red"))
    expect(result) |> toBe(true)
  })

  test("Chalk.hsl", () => {
    let result = eval(chalk->hsl(~h=0, ~s=0, ~l=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.hsv", () => {
    let result = eval(chalk->hsv(~h=0, ~s=0, ~v=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.hwb", () => {
    let result = eval(chalk->hwb(~h=0, ~w=0, ~b=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.ansi", () => {
    let result = eval(chalk->ansi(0))
    expect(result) |> toBe(true)
  })

  test("Chalk.ansi256", () => {
    let result = eval(chalk->ansi256(0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRgb", () => {
    let result = eval(chalk->bgRgb(~r=0, ~g=0, ~b=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHex", () => {
    let result = eval(chalk->bgHex("#000000"))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgKeyword", () => {
    let result = eval(chalk->bgKeyword("red"))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHsl", () => {
    let result = eval(chalk->bgHsl(~h=0, ~s=0, ~l=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHsv", () => {
    let result = eval(chalk->bgHsv(~h=0, ~s=0, ~v=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHwb", () => {
    let result = eval(chalk->bgHwb(~h=0, ~w=0, ~b=0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgAnsi", () => {
    let result = eval(chalk->bgAnsi(0))
    expect(result) |> toBe(true)
  })

  test("Chalk.bgAnsi256", () => {
    let result = eval(chalk->bgAnsi256(0))
    expect(result) |> toBe(true)
  })
})
