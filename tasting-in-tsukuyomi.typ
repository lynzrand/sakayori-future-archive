#set line(stroke: 0.5pt)
#let hl = line(length: 100%)
#let title_font(body) = text(font: "Sofia Sans", tracking: -.03em, body)
#let sans_font(body) = text(font: "Inter", body)
#let body_font(body) = text(font: "PT Sans", weight: 400, body)
#set par(justify: true)
#show footnote.entry: body => {
  show: body_font
  set text(size: 7pt, weight: "medium")
  set par(first-line-indent: 0pt, hanging-indent: 0pt)
  body
}

#set page(columns: 2, paper: "a4", margin: 1.3cm, footer: sans_font[
  #set align(right)
  #set text(size: 7pt)
  #let gap = {
    h(0.5em)
    [|]
    h(0.5em)
  }
  Longshot #gap www.longshot.luna #gap
  #text(weight: "black", context counter(page).display())
])

#place()[
  #hide()[
    #footnote()[
      Sakayori Labs, Institute of Digital Life, The University of Tokyo, Bunkyo-ku, Tokyo 113-8654, Japan.
    ] <sakayori_labs>
    #footnote()[
      Tsukuyomi Research Division, Tsukuyomi Development Inc., Akasaka, Minato-ku, Tokyo 107-0052, Japan
    ] <tsukuyomi_org>
    #footnote()[
      Black Onyx Co., Akasaka, Minato-ku, Tokyo 107-0052, Japan.
    ] <onyx>
  ]
]

// Title
#place(top, float: true, scope: "parent")[
  #[
    #set par(spacing: 8pt, leading: 0.3em)
    #show: title_font
    #text(weight: "black", size: 13pt)[ Article ]
    #hl

    #text(weight: 800, size: 24pt)[
      A Modular Toolchain for Gustatory Rendering in VR:
      High-Variety Taste Synthesis and Compatibility with Existing Software Architectures
    ]
  ]
  #set par(spacing: 5pt, leading: 0.3em)
  #v(1cm)
  #hl
  #show: sans_font
  #set text(size: 8pt, weight: "regular")

  #grid(
    columns: (1fr, 2fr),
    gutter: 8pt,
    [
      * https://doi.org/10.80000/2035.58.168 * #hl
      * Received: 1 October 2035 * #hl
      * Accepted: 17 January 2036 * #hl
      * Open access *
    ],
    [
      #text(weight: "bold")[
        Iroha Sakayori @sakayori_labs,
        Yachiyo Lunami @sakayori_labs @tsukuyomi_org,
        Tsumugi Yamamoto @sakayori_labs,
        Yuuto Kobayashi @sakayori_labs,
        Asahi Sakayori @onyx
      ]
      #v(.5cm) #hl

      #show: body_font
      #set text(size: 10pt)
      #set par(spacing: 1.1em, leading: 0.6em)

      Virtual reality (VR) systems have achieved high-fidelity visual and auditory immersion, yet gustation remains largely unaddressed, limiting the realism of eating, ritual and social interaction in persistent virtual environments. Here we present a modular toolchain for gustatory rendering that synthesizes a high variety of taste percepts and integrates into existing interactive software architectures. The system induces taste experiences using concentrated ultrasound deep brain stimulation, driven by a real-time rendering pipeline that maps in-world events to parametrized spatiotemporal stimulation programs under participant-specific calibration and safety constraints. In controlled psychophysical experiments, participants reliably discriminated canonical taste qualities (sweet, salty, sour, bitter and umami) and reported stable higher-order mixtures consistent with everyday flavour descriptors. End-to-end latency and scheduling were compatible with interactive VR content, and authoring tools enabled creators to bind gustatory effects to narrative, performance cues and social interactions using conventional asset and event abstractions. These findings establish gustatory rendering as a programmable modality for VR and demonstrate a practical pathway for deployment within production software stacks.
    ],
  )

  #v(0.5cm)
  #hl
]

#show: body_font
#show title: title_font
#set text(size: 9.5pt)

= Introduction
The sensory scope of contemporary VR is uneven. While advances in display optics, rendering, spatial audio and tracking have made virtual environments visually and acoustically convincing, gustation remains largely absent from the interaction repertoire. This omission is not merely a missing “novelty” sense. Taste is tightly coupled to appetite, aversion, reward, satiety and autobiographical memory, and it contributes to social practices such as shared meals, celebration and caregiving. In persistent social VR settings, the inability to evoke gustatory experiences constrains both narrative expressivity and everyday plausibility, forcing creators toward purely symbolic representations of food and drink.

Prior work on mediated taste has typically focused on peripheral interfaces. Approaches include chemical delivery, olfactory substitution, thermal manipulation and electrical stimulation of the tongue. Although valuable for controlled demonstrations, these methods face obstacles to scaling in deployed VR systems: they may require consumables, impose hygiene and maintenance burdens, restrict mobility, and are difficult to integrate into interactive content where stimuli must be low-latency, repeatable and synchronizable across users. Moreover, peripheral actuation is often limited in achievable variety or compositional control, complicating the authoring of complex flavours and the reliable reproduction of a “taste asset” across sessions and participants.

A complementary approach is to modulate gustatory perception at the neural level. Concentrated ultrasound deep brain stimulation offers a non-chemical, non-contact actuation pathway with focal targeting potential and rapid temporal control. In principle, such stimulation can be scheduled as a time-varying control signal, enabling taste to be treated as a renderable modality analogous to audio: generated, mixed, timed and routed under software control. The central challenge is not simply eliciting a taste-like sensation, but engineering a system that (i) supports a broad and compositional taste space; (ii) accounts for individual variability through calibration; (iii) enforces conservative constraints; and (iv) integrates with production software architectures and creator workflows.

Here we introduce a modular toolchain for gustatory rendering designed for integration into existing VR application stacks. The toolchain translates semantic “flavour intents” and in-world events into parametrized spatiotemporal stimulation programs, mediates them through participant-specific calibration models, and executes them through a deterministic runtime aligned with the application’s update loop and event system. The toolchain is organized as separable components: an authoring layer for taste assets and timelines; a compilation layer that produces stimulation programs subject to constraints; a runtime renderer responsible for scheduling, mixing and latency control; and a device abstraction layer supporting multiple ultrasound actuation back ends.

This work makes three contributions. First, we provide an end-to-end software architecture that makes gustatory effects authorable and deployable in interactive VR without requiring bespoke application logic. Second, we demonstrate high-variety taste synthesis, including canonical taste qualities and higher-order mixtures, with repeatability suitable for interactive experiences in controlled experiments. Third, we characterize integration properties relevant to production systems, including end-to-end latency, synchronization hooks and content authoring workflows. Together, these results suggest that gustation can be incorporated into VR as a programmable modality, closing a long-standing gap in immersive systems and enabling new forms of interaction and narrative design.
