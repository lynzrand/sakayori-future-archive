#import "templates/longshot.typ": longshot_article
#import "@preview/meander:0.4.1"

#show: longshot_article(
  [Perfused Synthetic Skin for Realistic Facial Expression],
  [
    Minato Takahashi @sakayori_labs,
    Iroha Sakayori @sakayori_labs,
    Ume Nakamura @sakayori_labs
  ],
  [
    Aura-7 is a thin synthetic dermis designed to make facial expression look and feel biologically grounded, including involuntary cues such as micro-flushing and warming. The stack uses a collagen–graphene scaffold with embedded microfluidic capillaries carrying a biocompatible fluid with synthetic erythrocyte analogs to generate blush-like coloration, plus 254 SMA fiber micro-actuators mapped to 43 facial muscle groups for microexpression control. Aura-7 maintains a steady 36.5 °C surface temperature during continuous operation. In blinded viewing tests, 98.4% of observers could not reliably distinguish the unit from a biological human face.
  ],
  tldr: [A face is not a mesh. We built skin that blushes, warms, and moves like a human face under social load.],
  affiliations: (
    (
      label: "sakayori_labs",
      text: [Sakayori Labs, Institute of Digital Life, The University of Tokyo, Bunkyo-ku, Tokyo 113-8659, Japan.],
    ),
    // (
    //   label: "tsukuyomi_org",
    //   text: [Tsukuyomi Research Division, Tsukuyomi Development Inc., Akasaka, Minato-ku, Tokyo 107-0052, Japan],
    // ),
    // (
    //   label: "onyx",
    //   text: [Black Onyx Co., Akasaka, Minato-ku, Tokyo 107-0052, Japan.],
    // ),
  ),
  publish_date: "2039-08-02",
  doi: "doi:10.80168/neur.4207.00090",
)

#let fig = box(inset: 1em, width: 40%, figure(
  image("assets/kaguya-android.png"),
  caption: [Application of Aura-7 on the Type-KG android prototype.],
))

#meander.reflow({
  import meander: *

  placed(top + right, dx: 2cm, fig)

  container()
  content()[
    = Motivation and design targets

    Most “realistic” synthetic faces fail at close range because they omit physiology. Humans do not only read expression from shape; they read it from coupled signals that are hard to fake convincingly: subsurface color shifts, soft tissue compliance, micro-latency between intent and expression, and small thermal changes that correlate with affect. Aura-7 was designed around three field requirements:

    1. Social legibility at 0.3–1.5 m. The face must remain plausible during unconstrained conversation, not only during curated demos.
    2. Physiology-coupled expression. The system must support involuntary cues (flush and warmth) that track internal state rather than scripted animation.
    3. High cycle life under microexpression duty. The unit must tolerate frequent small motions, not only large expressions.

    The initial calibration target was a 14–17 year-old female phenotype, prioritizing adolescent optical and thermal characteristics (high subsurface scattering sensitivity and fast visible perfusion changes).
  ]
})
= System overview

Aura-7 is a layered stack integrated as a replaceable facial “skin module”:

- Layer A: Dermal scaffold (collagen–graphene composite) providing compliance, stretch, and optical base.
- Layer B: Microfluidic capillary network enabling perfusion-like coloration patterns (“blush,” localized redness gradients).
- Layer C: Micro-actuation layer (SMA fiber array) generating distributed deformation for both expressions and microexpressions.
- Layer D: Thermal management (distributed heaters + perfusion coupling) maintaining baseline temperature and transient warming.

A single controller schedules actuation, perfusion, and thermal outputs so that expression geometry, coloration, and temperature cohere as one physiological event rather than three independent effects.

= Dermal scaffold and mechanical envelope

To avoid the “rubber mask” artifact, the scaffold must be simultaneously soft, optically stable, and fatigue-resistant under micro-deformation. Aura-7 uses a collagen–graphene composite tuned for facial strain ranges. Mechanical characterization on coupon samples yielded tensile strength of 18.5 MPa and elastic modulus of 1.2 MPa, selected to match soft facial tissue while preserving stability under repeated actuation. The composite also supports stable subsurface scattering, reducing highlight “popping” during motion.

Practical note: the scaffold is intentionally slightly anisotropic to emulate directional stretch along typical facial tension lines. This improves realism during asymmetric expressions (smirks, partial raises) that otherwise read as mechanically symmetric.
