# rescript-chalk
ReScript bindings to the `Chalk` library for displaying styled text in the terminal. Includes colors, background colors, and other modifiers like `underline` and `italic` font styles.

## Usage

Just start with the base value, `Chalk.chalk`, and then build up the styles you want using `Chalk`'s style functions.

```rescript
let style = {
  open Chalk
  chalk->keyword(#palegreen)->bgHsl(~h=260, ~s=60, ~l=50)->italic->bold
}

let fancyText = Chalk.apply(style, "A picture is worth a thousand words")

Js.log(fancyText)
```


