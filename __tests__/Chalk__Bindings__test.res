open Jest
open ExpectJs

let randomSeed = 5230
Random.init(randomSeed)

module Rand = {
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

let text = "Hello World"

let eval = c => {
  let x = Chalk.applyStyle(c, text)
  Js.typeof(x) === "string"
}

let tryCatch: (unit => 'a) => result<'a, exn> = thunk => {
  try Ok(thunk()) catch {
  | err =>
    Js.log(err)
    Error(err)
  }
}

let iterationLimit = 10000

describe("Chalk Bindings", () => {
  open Belt

  test("Chalk.reset", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->reset)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bold", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bold)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.dim", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->dim)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.italic", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->italic)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.underline", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->underline)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.inverse", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->inverse)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.hidden", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->hidden)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.strikethrough", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->strikethrough)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.visible", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->visible)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.black", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->black)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.red", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->red)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.green", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->green)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.yellow", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->yellow)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.blue", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->blue)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.magenta", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->magenta)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.cyan", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->cyan)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.white", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->white)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.blackBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->blackBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.gray", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->gray)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.grey", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->grey)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.redBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->redBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.greenBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->greenBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.yellowBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->yellowBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.blueBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->blueBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.magentaBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->magentaBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.cyanBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->cyanBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.whiteBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->whiteBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlack", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgBlack)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRed", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgRed)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGreen", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgGreen)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgYellow", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgYellow)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlue", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgBlue)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgMagenta", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgMagenta)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgCyan", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgCyan)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgWhite", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgWhite)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlackBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgBlackBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGray", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgGray)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGrey", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgGrey)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRedBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgRedBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgGreenBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgGreenBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgYellowBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgYellowBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgBlueBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgBlueBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgMagentaBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgMagentaBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgCyanBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgCyanBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgWhiteBright", () => {
    open Chalk
    let result = tryCatch(() => {
      eval(chalk->bgWhiteBright)
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.rgb", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let r = Rand.bool() ? Rand.int() : -Rand.int()
        let g = Rand.bool() ? Rand.int() : -Rand.int()
        let b = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->rgb(~r, ~g, ~b)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.hex", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let hexValue = Rand.string(~minLength=0, ~maxLength=100)
        let style = chalk->hex(hexValue)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.keyword", () => {
    open Chalk
    module Enum = Chalk__Keyword.Enum
    let result = tryCatch(() => {
      let arr = []
      let rec loop = maybeKw => {
        switch maybeKw {
        | Some(kw) =>
          let style = chalk->keyword(kw)
          let _: int = Js.Array2.push(arr, eval(style))
          loop(Enum.next(kw))
        | None => ()
        }
      }
      loop(Some(Enum.first))
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.hsl", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let s = Rand.bool() ? Rand.int() : -Rand.int()
        let l = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->hsl(~h, ~s, ~l)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.hsv", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let s = Rand.bool() ? Rand.int() : -Rand.int()
        let v = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->hsv(~h, ~s, ~v)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.hwb", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let w = Rand.bool() ? Rand.int() : -Rand.int()
        let b = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->hwb(~h, ~w, ~b)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.ansi", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let ansiValue = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->ansi(ansiValue)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.ansi256", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let ansi256Value = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->ansi256(ansi256Value)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgRgb", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let r = Rand.bool() ? Rand.int() : -Rand.int()
        let g = Rand.bool() ? Rand.int() : -Rand.int()
        let b = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgRgb(~r, ~g, ~b)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHex", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let hexValue = Rand.string(~minLength=0, ~maxLength=100)
        let style = chalk->bgHex(hexValue)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgKeyword", () => {
    open Chalk
    module Enum = Chalk__Keyword.Enum
    let result = tryCatch(() => {
      let arr = []
      let rec loop = maybeKw => {
        switch maybeKw {
        | Some(kw) =>
          let style = chalk->bgKeyword(kw)
          let _: int = Js.Array2.push(arr, eval(style))
          loop(Enum.next(kw))
        | None => ()
        }
      }
      loop(Some(Enum.first))
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHsl", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let s = Rand.bool() ? Rand.int() : -Rand.int()
        let l = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgHsl(~h, ~s, ~l)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHsv", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let s = Rand.bool() ? Rand.int() : -Rand.int()
        let v = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgHsv(~h, ~s, ~v)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgHwb", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let h = Rand.bool() ? Rand.int() : -Rand.int()
        let w = Rand.bool() ? Rand.int() : -Rand.int()
        let b = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgHwb(~h, ~w, ~b)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgAnsi", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let ansiValue = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgAnsi(ansiValue)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })

  test("Chalk.bgAnsi256", () => {
    open Chalk
    let result = tryCatch(() => {
      let arr = []
      for _ in 1 to iterationLimit {
        let ansi256Value = Rand.bool() ? Rand.int() : -Rand.int()
        let style = chalk->bgAnsi256(ansi256Value)
        let _: int = Js.Array2.push(arr, eval(style))
      }
      !Js.Array2.includes(arr, false) && Array.length(arr) > 0
    })->Result.getWithDefault(false)
    expect(result) |> toBe(true)
  })
})
