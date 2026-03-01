#let science_article(
  one_liner,
  title_text,
  authors,
  abstract,
  affiliations: (),
  category: "Research Articles",
  journal: "Sentience",
  journal_publish_date: "",
) = body => {
  set line(stroke: 0.5pt)

  // Horizontal line
  let hl = line(length: 100%)

  // Color
  let accent_color = blue

  // Fonts
  let title_font(body) = text(font: "Playfair Display", weight: "bold", body)
  let sans_font(body) = text(font: "PT Sans", tracking: -0.02em, body)
  let body_font(body) = text(font: "Libertinus Serif", weight: 500, tracking: -0.02em, body)
  let caps_sans_font(body) = text(font: "Roboto", weight: 700, tracking: .08em, upper(body))

  set par(justify: true)
  show footnote.entry: body => {
    show: sans_font
    set text(size: 7pt, weight: "medium", stretch: 80%)
    set par(first-line-indent: 0pt, hanging-indent: 0pt)
    body
  }

  // Page style
  set page(
    columns: 2,
    paper: "a4",
    margin: 1.25cm,
    header-ascent: 0.5cm,
    footer-descent: 0.5cm,

    header: align(end)[
      #text(size: 8pt, caps_sans_font(underline(offset: .3em, stroke: accent_color, category)))
    ],
    footer: sans_font[
      #set align(left)
      #set text(size: 8pt)

      #title_font(text(weight: "bold", size: 1.2em, journal))
      #h(2em)
      #caps_sans_font(text(weight: "regular", size: 0.9em, journal_publish_date))
      #h(1fr)
      #text(weight: "black", context counter(page).display())
    ],
  )

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
  box(width: 95%)[
    #set par(justify: false)

    #text(size: 9pt, fill: accent_color, caps_sans_font(one_liner))

    #v(0.1em)

    #par(spacing: 8pt, leading: .7em, title_font(text(weight: 800, size: 18pt)[ #title_text ]))
    #v(0.3em)

    #show: sans_font
    #text(weight: "bold", size: 9pt)[ #authors ]

    #v(1em)

    #set text(size: 9pt)
    #set par(spacing: 1.1em, leading: 0.6em)

    #abstract

    #line(length: 100%, stroke: accent_color)
    #v(0.5cm)
  ]

  block()[
    #show title: sans_font
    #show: body_font
    #set text(size: 9pt)
    #set par(spacing: .5em, leading: .5em, first-line-indent: 1em)

    #body
  ]
}
