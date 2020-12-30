# rescript-chalk
ReScript bindings to the `Chalk` library for displaying styled text in the terminal. Includes colors, background colors, and other modifiers like `underline` and `italic` font styles.

## Usage

Just start with the base value, `Chalk.chalk`, and then build up the styles you want using `Chalk`'s style functions.

```rescript
let style = {
  open Chalk
  chalk->greenBright->bgHex("#0055FF")->underline->italic
}

let styledText = Chalk.apply(style, "Pretty cool!")

Js.log(styledText);
```
