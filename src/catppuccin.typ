#import "pallete.typ": mocha, themes

#let catppuccin(theme: mocha, body) = {
  if theme not in themes {
    panic("Invalid theme.")
  }
  #let tmTheme = "tmThemes/" + theme + ".tmTheme"
  #let palette = get_palette(theme)

  set page(fill: theme.ctpBase)
  set text(fill: theme.ctpText)

  body
}