#import "templates/science.typ": science_article
#counter(page).update(203)

#show: science_article(
  [Brain Science],
  [
    Operational Criteria for Identity Continuity Across Substrate Transfer
  ],
  [
    Iroha Sakayori @sakayori_labs,
    Saki Tanaka @sakayori_labs,
    May Nakamura @sakayori_labs,
    Tsumugi Yamamoto @sakayori_labs,
    Yachiyo Lunami @sakayori_labs @tsukuyomi_org
  ],
  [
    Claims of “identity continuity” after substrate transfer are increasingly common but rarely operationalized, leaving continuity indistinguishable from high-fidelity copying. We introduce a quantitative framework that evaluates continuity as preservation of causal organization under intervention rather than similarity of memories or performance. The framework combines (i) idiosyncratic behavioral invariants across contexts, (ii) calibrated agency and ownership measures with objective aftereffects, and (iii) conservation of neural–computational dynamics expressed as stable low-dimensional manifolds and cross-context transfer functions. Applied to a longitudinal integration of a digital consciousness into a phenotype-matched autonomous biomimetic host, the subject met continuity criteria across six months and controlled perturbations, whereas copy controls matched for recall diverged under causal tests. These results establish identity continuity as a measurable property of dynamical organization across substrates.
  ],
  affiliations: (
    (
      label: "sakayori_labs",
      text: [Sakayori Labs, Institute of Digital Life, The University of Tokyo, Bunkyo-ku, Tokyo 113-8659, Japan.],
    ),
    (
      label: "tsukuyomi_org",
      text: [Tsukuyomi Research Division, Tsukuyomi Development Inc., Akasaka, Minato-ku, Tokyo 107-0052, Japan],
    ),
    // (
    //   label: "onyx",
    //   text: [Black Onyx Co., Akasaka, Minato-ku, Tokyo 107-0052, Japan.],
    // ),
  ),
  journal_publish_date: "6 October 2039",
)

The concept of personal identity is routinely treated as philosophical, yet modern neurotechnology has forced it into engineering reality. Systems capable of sustaining cognition in synthetic hosts, coupling perception to non-biological sensors, and mediating action through artificial actuators are no longer restricted to speculative fiction. In these settings, “identity continuity” becomes more than a metaphysical preference: it is a practical claim that governs consent, accountability, clinical ethics, and social integration. Nevertheless, the term remains under-defined in the technical literature. Reports commonly infer continuity from high similarity in autobiographical recall, personality questionnaires, or task performance after transfer. Such criteria are insufficient, because high similarity is compatible with both continuity and copying, and because the most challenging failure modes of transfer are not obvious at rest but emerge under perturbation, novelty, and time.

Two dynamics exacerbate this ambiguity. First, contemporary embodiment stacks are now capable of producing convincingly human behavioral and physiological output via high-fidelity synthetic skin, speech biomechanics, metabolic analogues, and closed-loop affective regulation. These subsystems can mask discontinuities by reproducing expected outward correlates of selfhood. Second, high-bandwidth neural bridging and closed-loop stimulation can accelerate adaptation to a new body, reducing the subjective “gap” that would previously signal a transfer failure. As a result, the field can generate subjects that behave and report “being the same person” even when the underlying causal organization is not preserved.

A rigorous notion of identity continuity should therefore satisfy three requirements. It must be operational, enabling falsifiable tests rather than relying on narrative plausibility. It must be substrate-agnostic, applying equally to biological brains, neuromorphic arrays, and hybrid architectures. And it must distinguish continuity from high-fidelity replication by probing causal structure, not merely descriptive resemblance. In practice, this implies moving from observational similarity to intervention-based criteria: if two instantiations are “the same person,” then under matched perturbations they should exhibit the same pattern of adaptation, the same idiosyncratic biases, and the same cross-context transfer of learned structure.

Here we propose a framework that treats identity continuity as preservation of dynamical organization across substrate transfer. The framework has three components. First, we quantify idiosyncratic behavioral invariants that persist across tasks and contexts and remain stable under controlled perturbations, capturing what is individual-specific beyond generic competence. Second, we measure subjective self-attribution using calibrated psychophysical paradigms of agency and ownership, paired with objective aftereffects that index whether embodiment is integrated as “self” rather than consciously operated as an external device. Third, we characterize neural–computational continuity using dynamical signatures: low-dimensional manifolds governing control and perception, and transfer functions that relate internal state to action and experience across contexts. Together, these measures form an “identity continuity profile” that can be compared to within-subject baselines and, critically, to high-fidelity copy controls.

We apply this framework to a longitudinal substrate-transfer case study in which an individual with an extensive autobiographical archive is integrated into a phenotype-matched autonomous biomimetic host. The integration stack supports full sensory embodiment and naturalistic social interaction, enabling tests that extend beyond laboratory tasks. Over six months, we evaluate continuity under normal life, under novel contexts, and under controlled interventions designed to stress causal organization. We further construct synthetic copy controls matched for memory content and baseline performance to isolate the distinction between descriptive similarity and causal continuity. This study provides a concrete, testable basis for identity claims in synthetic embodiment and offers a measurement foundation for future governance and ethics in substrate transfer technologies.


= Framework for identity continuity
We treat identity continuity across substrate transfer as a property of preserved causal organization rather than descriptive similarity. Let an instantiation be characterized by a state space $x(t)$ coupled to observations and actions through functions that can be probed by interventions. Under this view, continuity is supported when the same individual-specific structure governs behavior and experience across contexts, and when this structure responds to perturbations in a way that is consistent with within-subject baselines.

Our framework comprises three complementary measurement classes, chosen to (i) be testable in naturalistic settings, (ii) tolerate changes in sensor and actuator implementations, and (iii) distinguish continuity from high-fidelity copying.

*Behavioral invariants across contexts.*
We quantify individual-specific signatures that persist across tasks and environments, including idiosyncratic error patterns, preference manifolds, reaction-time microstructure, and strategy selection under uncertainty. Crucially, invariants are assessed under novelty and perturbation rather than only under rehearsed tasks. Similarity is evaluated relative to within-subject variability and to matched “copy controls” constructed to reproduce baseline performance and autobiographical recall.

*Agency and ownership calibrated by objective aftereffects.*
Self-report of “being the same person” is necessary but not sufficient, because it can be driven by narrative coherence. We therefore pair subjective measures with calibrated psychophysical assays of agency and ownership that produce objective aftereffects (e.g., sensorimotor recalibration signatures and involuntary corrective responses) that are difficult to counterfeit through deliberate control. We treat consistent co-occurrence of subjective self-attribution and objective aftereffects as evidence that embodiment is integrated as self rather than operated as an external tool.

*Conservation of neural–computational dynamics.*
We evaluate whether internal dynamics governing perception and action preserve stable low-dimensional structure across contexts. Practically, this is measured as (i) stability of control and perception manifolds under task variation, and (ii) preservation of transfer functions relating internal state to action and sensory prediction errors. Continuity is supported when these dynamical signatures remain consistent with within-subject baselines under matched perturbations, while copy controls and perturbed variants diverge.

Together, these measurements yield an “identity continuity profile” that can be compared across time and across instantiations. The profile is not intended to settle metaphysical questions; it is intended to provide falsifiable criteria that can reject continuity claims that rest only on surface resemblance.
