#let template(
  title: none,
  subtitle: none,
  authors: ("lrshsl",),
  abstract: none,
  table_of_contents: false,
  columns: 2,
  content,
) = {
  set document(title: title) if title != none
  set document(author: authors) if authors != ()

  set page(
    paper: "us-letter",
    header: grid(
      columns: 2,
      column-gutter: 1fr,
      grid(gutter: 0.5em, ..authors), title,
    ),
    columns: columns,
  )
  set par(justify: true)
  set text(
    font: "Libertinus Serif",
    size: 11pt,
  )

  // Always show sum/limit parameters below/above
  show math.op.where(text: [lim]): math.limits
  show math.sum: math.limits

  // Title / Author[s] / [Abstract]
  place(
    top + center,
    float: true,
    scope: "parent",
    clearance: 2em,
    {
      text(weight: "bold", size: 22pt)[#title]
      if subtitle != none {
        linebreak()
        text(style: "italic", size: 14pt)[#subtitle]
      }
      if authors != () {
        linebreak()
        grid(columns: authors.len(), column-gutter: 2em, ..authors)
      }

      if abstract != none {
        v(1em)
        par(justify: false)[
          *Abstract* \
          #abstract
        ]
      }
    },
  )

  if table_of_contents {
    outline()
    pagebreak()
  }

  content
}

#let summary(subject: none, ..args) = template(
  title: if subject == none {
    "Summary"
  } else {
    subject + " - Summary"
  },
  ..args,
)

#let thesis(..args) = template(table_of_contents: true, ..args)

#let lecture_notes(..args) = template(..args)

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

#let todo(is_draft) = {
  if is_draft {
    text(fill: red, style: "italic")[TODO]
  }
}

