#import "../src/lib.typ": catppuccin, themes, get_palette
#import "@preview/codly:0.1.0": *

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(
  title: "",
  subtitle: "",
  abstract: [],
  authors: (),
  url: none,
  date: none,
  version: none,
  flavor: themes.mocha,
  body,
) = {
  let palette = get_palette(flavor)

  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  // set text(font: "Linux Libertine", lang: "en")
  set text(font: "Nunito", hyphenate: false, lang: "en")

  show: catppuccin.with(flavor, code_block: true, code_syntax: true)

  show heading.where(level: 1): set text(font: "Jellee Roman")
  show heading.where(level: 2): set text(font: "Jellee Roman")
  show heading.where(level: 1): it => block(smallcaps(it), below: 1em)
  set heading(numbering: (..args) => if args.pos().len() <= 3 {
    numbering("1.1.", ..args)
  })

  show figure.caption: set text(size: 0.8em, fill: palette.colors.subtext0.rgb)

  show list: pad.with(x: 5%)

  let ctp_blue = palette.colors.blue.rgb
  show link: set text(fill: ctp_blue)
  // show link: it => if type(it.element) != ref {
  //   underline
  // }

  // show ref: it => {
  // set text(fill: ctp_blue)
  // underline[#it]
  // }


  v(4em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title, font: "Jellee Roman"))
    #block(text(1.0em, subtitle))
    #v(4em, weak: true)
    v#version #h(1.2cm) #date
    #block(link(url))
    #v(1.5em, weak: true)
  ]

  // Author information.
  pad(
    top: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  v(3cm, weak: true)

  // Abstract.
  pad(
    x: 3.8em,
    top: 1em,
    bottom: 1.1em,
    align(center)[
      #heading(outlined: false, numbering: none, text(0.85em, smallcaps[Abstract]))
      #abstract
    ],
  )

  // Main body.
  set par(justify: true)

  v(1fr)
  pad(x: 10%, outline(depth: 3, indent: auto))
  v(1fr)
  pagebreak()

  show: codly-init
  body
}

#let TeX = style(styles => {
  set text(font: "Linux Libertine")
  let e = measure(text(1em, "E"), styles)
  let T = "T"
  let E = text(1em, baseline: e.height / 4, "E")
  let X = "X"
  box(T + h(-0.1em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  set text(font: "Linux Libertine")
  let l = measure(text(1em, "L"), styles)
  let a = measure(text(0.7em, "A"), styles)
  let L = "L"
  let A = text(0.7em, baseline: a.height - l.height, "A")
  box(L + h(-0.3em) + A + h(-0.1em) + TeX)
})

#let to-title(string) = {
  assert(string.len() > 0, message: "String is empty")
  if string.len() == 1 {
    return upper(string.at(0))
  }

  return upper(string.at(0)) + string.slice(1)
}

#let make_namespace(name: none, scope: (:), ..modules) = {
  let contents = ""

  for module in modules.pos() {
    let mod = read("../src/" + module)
    assert.ne(mod, none, message: "Module not found: " + module)
    contents += mod + "\n"
  }

  assert.ne(modules, "", message: "Err: " + repr(modules))

  assert.ne(name, none, message: "Namespace name is required")
  return (
    name: name,
    scope: scope,
    contents: contents,
  )
}