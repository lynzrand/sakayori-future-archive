#let longshot_article(
  title_text,
  authors,
  abstract,
  affiliations: (),
  meta_left: hl => [],
  category: "Article",
  journal: "Longshot",
  journal_url: "longshot.luna",
  publish_date: none,
  doi: none,
) = body => {
  set text(font: "IBM Plex Sans")

  let logotype = it => text(font: "Sofia Sans", stretch: 80%, it)
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
          weight: "bold",
          upper(category),
        ),
      ))),
      v(6pt),
      line(length: 100%),
    ),
    footer: logotype(text(size: 9pt, stack(
      dir: ltr,
      doi,
      h(1fr),
      text(fill: gray, journal_url),
      h(2em),
      text(
        weight: "bold",
        context counter(page).display(),
      ),
    ))),
  )

  // Title
  title_font()[
    #set par(spacing: .5em, leading: .5em)
    #text(size: 20pt, weight: "bold", title_font(title_text))

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

  [
    = Abstract
    #abstract

    #body
  ]
}
