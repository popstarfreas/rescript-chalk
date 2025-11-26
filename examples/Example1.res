let style = {
  open Chalk
  chalk->keyword(#palegreen)->bgHsl(~h=260, ~s=60, ~l=50)->italic->bold
}

let fancyText = Chalk.apply(style, "A picture is worth a thousand words")

Console.log(fancyText)
