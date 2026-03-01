#let nature_article(
  title_text,
  authors,
  abstract,
  affiliations: (),
  meta_left: hl => [],
  category: "Article",
  journal: "Longshot",
  journal_url: "www.longshot.luna",
) = body => {
  set line(stroke: 0.5pt)
  let hl = line(length: 100%)
  let title_font(body) = text(font: "Sofia Sans", tracking: -.03em, body)
  let sans_font(body) = text(font: "Inter", body)
  let body_font(body) = text(font: "PT Sans", weight: 400, body)
  set par(justify: true)
  show footnote.entry: body => {
    show: body_font
    set text(size: 7pt, weight: "medium")
    set par(first-line-indent: 0pt, hanging-indent: 0pt)
    body
  }

  set page(columns: 2, paper: "a4", margin: 1.3cm, footer: sans_font[
    #set align(right)
    #set text(size: 7pt)
    #let gap = {
      h(0.5em)
      [|]
      h(0.5em)
    }
    #journal #gap #journal_url #gap
    #text(weight: "black", context counter(page).display())
  ])

  if affiliations.len() > 0 {
    place()[
      #hide()[
        #for aff in affiliations {
          [#footnote()[#aff.text] #label(aff.label)]
        }
      ]
    ]
  }

  // Title
  place(top, float: true, scope: "parent")[
    #[
      #set par(spacing: 8pt, leading: 0.3em)
      #show: title_font
      #text(weight: "black", size: 13pt)[ #category ]
      #hl

      #text(weight: 800, size: 24pt)[ #title_text ]
    ]
    #set par(spacing: 5pt, leading: 0.3em)
    #v(1cm)
    #hl
    #show: sans_font
    #set text(size: 8pt, weight: "regular")

    #grid(
      columns: (1fr, 2fr),
      gutter: 8pt,
      [#meta_left(hl)],
      [
        #text(weight: "bold")[ #authors ]
        #v(.5cm) #hl

        #show: body_font
        #set text(size: 10pt)
        #set par(spacing: 1.1em, leading: 0.6em)

        #abstract
      ],
    )

    #v(0.5cm)
    #hl
  ]

  show: body_font
  show title: title_font
  set text(size: 9.5pt)

  body
}
