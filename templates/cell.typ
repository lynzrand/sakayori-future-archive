#let cell_article(
  title_text,
  authors,
  abstract,
  affiliations: (),
  category: "Article",
  journal: "Cyte",
  journal_url: "www.nurture.luna",
) = body => {
  let accent = purple
  let title_type = body => {
    set text(tracking: -.05em)
    body
  }

  set text(font: "Inter", size: 9pt, tracking: -.03em)
  set par(justify: true, spacing: .5em, leading: .5em)
  set page(
    paper: "a4",
    margin: (top: 4cm, left: 2cm, right: 2cm, bottom: 2cm),
    columns: 2,
    header: [
      #box()[
        #text(fill: accent, weight: "bold", size: 24pt, title_type()[Cyte])
        #h(1fr)
        #box(move(dy: 6pt)[
          #box()[
            #set align(right)
            #set par(leading: 6pt)
            #text(fill: accent, weight: "bold", size: 14pt, title_type()[CytePress])\
            #text(fill: gray, weight: "medium", size: 10pt, upper(title_type()[Open Access]))
          ]
          #h(6pt)
          #box(clip: false, width: 0pt)[
            #rect(width: 150pt, stroke: none, fill: accent)
          ]
        ])
      ]
    ],
    header-ascent: .5in,
  )

  show heading.where(depth: 1): it => [
    #v(.8em)
    #text(
      fill: gray.darken(40%),
      weight: "black",
      size: 10pt,
      upper(it),
    )
    #v(.8em)
  ]
  show heading.where(depth: 2): it => [
    #text(
      fill: gray.darken(40%),
      weight: "black",
      size: 10pt,
      it,
    )
  ]

  // Title
  place(scope: "parent", float: true, top)[
    #set par(spacing: 0em, leading: .5em)

    #text(size: 16pt, weight: "bold", fill: gray, title_type(category))
    #v(8pt)
    #text(size: 20pt, weight: "bold", title_type(title_text))
    #v(16pt)
    #set par(spacing: .5em, leading: .5em)

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


    = Summary
    #text(size: 10pt, fill: accent, weight: 600, par(justify: true, abstract))

    #v(2em)
  ]

  set par(justify: true, first-line-indent: 1em, spacing: .7em, leading: .7em)
  body
}
