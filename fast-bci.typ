#import "templates/cell.typ": cell_article

#show: cell_article(
  [
    Programmable Plasticity Induction Stabilizes High-Bandwidth Bidirectional Brain–Body Interfaces for Rapid Remote Embodiment
  ],
  [
    Iroha Sakayori @sakayori_labs,
    Yuuto Kobayashi @sakayori_labs,
    Ken Satou @sakayori_labs and
    Yachiyo Lunami @sakayori_labs @tsukuyomi_org
  ],
  [
    High-fidelity teleoperation of remote bodies requires not only bandwidth and low latency, but also a nervous system willing to adopt an unfamiliar sensorimotor mapping as its own. Here we report a bidirectional brain–body interface (BBI) for remote embodiment that couples high-speed neural recording and stimulation to a closed-loop “plasticity induction” controller that accelerates adaptation and prevents long-horizon drift. Participants achieved stable embodiment of a previously unseen android body within \~1 h of guided interaction, as measured by rapid reductions in control error, emergence of automatic corrective reflexes, and robust subjective ownership ratings aligned with objective sensorimotor aftereffects. Once acquired, the mapping remained stable across days with minimal recalibration when the interface was used regularly, whereas infrequent use led to predictable degradation consistent with reversible remapping rather than loss of skill. Neural population dynamics in distributed sensorimotor networks reorganized toward a compact, low-dimensional control manifold over learning, and the plasticity induction controller selectively increased learning rate without sacrificing precision by timing stimulation to endogenous error signals. These results establish programmable plasticity induction as a general strategy for making high-bandwidth bidirectional BBIs deployable for sustained remote embodiment.
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
)

= Introduction
Bidirectional brain–computer interfaces (BCIs) have advanced rapidly in recording density, stimulation capabilities, and closed-loop control, motivating a renewed vision of remote embodiment: the ability for a user to operate a distant body with high precision while receiving feedback that is experienced as intrinsically “self-related.” Yet practical remote embodiment has remained limited by a constraint that is not primarily computational. The central difficulty is biological: the nervous system must learn and maintain a new sensorimotor mapping that links neural activity to an unfamiliar body with different dynamics, morphology, and sensory contingencies. Without fast and stable adaptation, high-bandwidth interfaces become brittle: performance drifts, calibration demands accumulate, and the experience degrades into conscious micromanagement rather than embodied control.

Decades of work in motor learning and multisensory integration have shown that humans can adapt to altered mappings, but canonical paradigms often require extended training and yield mappings that remain context-dependent, fragile, or slow to reacquire. In contrast, sustained remote embodiment in a real environment demands rapid acquisition, automaticity, and stability over repeated sessions. The problem is compounded by the requirements of bidirectional interfaces. Sensory feedback, particularly when delivered through stimulation, can accelerate learning by closing the loop between action and consequence. However, stimulation can also destabilize adaptation if it is not aligned with endogenous learning signals, potentially driving maladaptive plasticity, perceptual drift, or the emergence of competing mappings. Thus, achieving deployable remote embodiment requires not merely better interfaces, but a principled method for shaping plasticity itself.

Here we propose that remote embodiment should be treated as a plasticity management problem. Specifically, we introduce a high-bandwidth bidirectional brain–body interface (BBI) coupled to a closed-loop controller that we term programmable plasticity induction. The controller monitors performance and neural state to infer learning-relevant error signals and delivers temporally precise stimulation designed to amplify beneficial adaptation while suppressing drift. In contrast to approaches that treat stimulation as a channel for conveying sensation alone, programmable plasticity induction treats stimulation as an intervention on the learning process, tuned to the nervous system’s internal timing and contextual gating.

We demonstrate that this approach enables rapid and sustained embodiment of a novel android body. Participants acquired a stable mapping within approximately 1 h of guided interaction, and once acquired, the mapping remained stable across days with minimal recalibration provided that the interface was used regularly. Conversely, infrequent use led to predictable degradation that could be rapidly reversed, consistent with reversible remapping rather than loss of skill. Across learning, neural population activity reorganized toward a compact control manifold, suggesting that the nervous system compresses the remote body’s dynamics into a representation compatible with efficient online control. Together, these findings identify programmable plasticity induction as a general mechanism for stabilizing high-speed bidirectional interfaces and for making remote embodiment practical beyond laboratory demonstrations.

