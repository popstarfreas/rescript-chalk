open Belt
open Jest
open Expect
open Chalk__TestUtils

// let keywordArray_length = Array.length(keywordArray)
// let keywordArray_maxIndex = keywordArray_length - 1

let isTrueU = (x: bool) => x

describe("Chalk.Keyword", () => {
  test("'toString' produces 'string' data type for each 'keyword' type that is passed in", () => {
    open Chalk
    let result = tryCatch(
      () => {
        let arr = []
        Array.forEachU(
          keywordArray,
          kw => {
            let kwStr = Keyword.toString(kw)
            let isString = Js.typeof(kwStr) === "string"
            let _: int = Js.Array2.push(arr, isString)
          },
        )
        arr->Array.everyU(isTrueU)
      },
    )->Result.getWithDefault(false)
    expect(result)->toBe(true)
  })

  test("'fromString(toString(keyword))' should yield 'Some(keyword)'", () => {
    open Chalk
    let result = tryCatch(
      () => {
        let arr = []
        Array.forEachU(
          keywordArray,
          kw => {
            let kwStr = Keyword.toString(kw)
            let maybeKw = Keyword.fromString(kwStr)
            let isGood = switch maybeKw {
            | None => false
            | Some(kw2) => Keyword.equal(kw, kw2)
            }
            let _: int = Js.Array2.push(arr, isGood)
          },
        )
        arr->Array.everyU(isTrueU)
      },
    )->Result.getWithDefault(false)
    toBe(expect(result), true)
  })

  test("'equal(a, a)' should always be 'true'", () => {
    open Chalk
    let result = tryCatch(
      () => {
        let arr = []
        Array.forEachU(
          keywordArray,
          kw => {
            let isGood = Keyword.equal(kw, kw) === true
            let _: int = Js.Array2.push(arr, isGood)
          },
        )
        arr->Array.everyU(isTrueU)
      },
    )->Result.getWithDefault(false)
    toBe(expect(result), true)
  })

  test("'compare(a, a)' should always be '0'", () => {
    open Chalk
    let result = tryCatch(
      () => {
        let arr = []
        Array.forEachU(
          keywordArray,
          kw => {
            let isGood = Keyword.compare(kw, kw) === 0
            let _: int = Js.Array2.push(arr, isGood)
          },
        )
        arr->Array.everyU(isTrueU)
      },
    )->Result.getWithDefault(false)
    toBe(expect(result), true)
  })

  test("passing two different keywords to 'compare' should always be either '-1' or '1'", () => {
    open Chalk
    let result = tryCatch(
      () => {
        let arr = []
        let myKw = keywordArray->Array.shuffle->Array.getUnsafe(0)
        Array.forEachU(
          keywordArray,
          kw => {
            if Keyword.equal(myKw, kw) {
              ()
            } else {
              let cmpResult = Keyword.compare(myKw, kw)
              let isGood = cmpResult === -1 || cmpResult === 1
              let _: int = Js.Array2.push(arr, isGood)
            }
          },
        )
        arr->Array.everyU(isTrueU)
      },
    )->Result.getWithDefault(false)
    toBe(expect(result), true)
  })
})
