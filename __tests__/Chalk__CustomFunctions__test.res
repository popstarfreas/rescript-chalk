open Jest
open Expect

describe("Custom Functions", () => {
  test("'Chalk.level' returns 'Some(level)'", () => {
    open Chalk
    let lvl = chalk->level
    expect(Belt.Option.isSome(lvl)) |> toBe(true)
  })

  test("'Chalk.levelRaw' returns an integer between 0 and 3 (inclusive)", () => {
    open Chalk

    let lvl = chalk->levelRaw

    let isInt =
      Js.typeof(lvl) === "number" && float_of_int(lvl) === Js.Math.floor_float(float_of_int(lvl))

    let isInRange = lvl >= 0 && lvl <= 3

    expect((isInt, isInRange)) |> toEqual((true, true))
  })

  test("'Chalk.levelExn' does not raise an exception", () => {
    open Chalk

    let result = switch levelExn(chalk) {
    | exception e =>
      Js.log(e)
      false
    | _ => true
    }

    expect(result) |> toBe(true)
  })

  test("Color support level is parsed correctly", () => {
    open Chalk

    let lvl = levelExn(chalk)
    let lvlInt = levelRaw(chalk)

    let result = switch levelFromInt(lvlInt) {
    | None => false
    | Some(parsedLvl) => lvl == parsedLvl
    }

    expect(result) |> toBe(true)

  })
})
