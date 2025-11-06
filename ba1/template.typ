
#set page(columns: 2)

#let h0 = h(0.5em)
#let h1 = h(1em)
#let v0 = v(0.5em)
#let v1 = v(1em)
#let h2 = h(2em)
#let v2 = v(2em)

#let note(title: none, body) = {
  block(
    fill: luma(230),
    inset: 1em,
    radius: 4pt,
  )[
    #if title != none {
      [==== #title]
    }
    #set text(style: "italic")
    #body
  ]
}

#let important(width: auto, body) = {
  align(center)[
    #rect(
      inset: 1em,
      width: width,
    )[#body]
  ]
}

