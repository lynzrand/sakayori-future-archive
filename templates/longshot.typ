#import "@preview/chomp:0.1.0": truncate-to-fit

#let to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(to-string).join()
  } else if it.has("body") {
    to-string(it.body)
  } else if it == [ ] {
    " "
  }
}

#let longshot_article(
  title_text,
  authors,
  abstract,
  tldr: [],
  affiliations: (),
  category: "Engineering Report",
  journal: "Longshot",
  journal_url: "longshot.luna",
  publish_date: none,
  doi: none,
) = body => {
  set text(font: "IBM Plex Sans", size: 10pt)

  let logotype = it => text(font: "Sofia Sans", it)
  let title_font = it => text(font: "IBM Plex Sans", stretch: 60%, it)
  let header_font = it => text(font: "IBM Plex Sans", it)

  show heading: header_font

  set page(
    paper: "a4",
    margin: (top: 2cm, left: 2cm, right: 4cm, bottom: 3cm),
    header: stack(
      dir: ttb,

      logotype(text(size: 9pt, stack(
        dir: ltr,
        text(weight: "black", upper(journal)),
        h(2em),
        text(fill: gray, publish_date),
        h(1fr),
        text(
          fill: gray,
          truncate-to-fit(to-string(title_text).trim(), width: 20em, suffix: "..."),
        ),
      ))),
      v(6pt),
      line(length: 100%),
    ),
    footer: logotype(text(size: 9pt, [
      #stack(
        dir: ltr,
        doi,
        h(1fr),
        text(fill: gray, journal_url),
        h(2em),
        text(
          weight: "bold",
          context counter(page).display(),
        ),
      )
    ])),
  )


  // Title
  title_font()[
    #set par(spacing: .5em, leading: .5em)

    #v(1em)
    #text(weight: "bold", fill: red, upper(category))

    #text(size: 20pt, weight: "bold", title_text)

    #show ref: it => {
      let el = it.element
      if el == none or el.kind != "aff" {
        return it
      }
      h(0pt, weak: true)
      super(it)
    }
    #text(size: 10pt)[
      #text(weight: 600)[
        #authors
      ]
    ]

    #text(size: 9pt, enum(
      numbering: n => super([#n]),
      spacing: 0pt,
      body-indent: 0pt,
      ..affiliations.map(aff => [
        #aff.text
        #figure(kind: "aff", supplement: none, placement: none, [])
        #label(aff.label)
      ]),
    ))
  ]

  set par(justify: true, leading: .7em, spacing: 1.4em)
  // set par.line(numbering: it => {
  //   if (calc.rem(it, 10) == 0) { text(str(it), size: 7pt) }
  // })
  show heading.where(depth: 1): it => [
    #v(1.5em, weak: true)
    #it
    #v(1em, weak: true)
  ]
  show figure.caption: it => text(size: 8pt)[
    *#it.supplement #it.counter.display()*: #it.body
  ]

  [
    #box(width: 100%, inset: 1em, fill: white.darken(5%))[
      *TL;DR:* #text(weight: "medium", tldr)
    ]

    = Summary
    #abstract

    #line(length: 50%)
    #v(3em, weak: true)

    #body
  ]
}
