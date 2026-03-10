---
layout: page
title: MONALISA <br/>(2025-2029)
description: "Monotone Operators and Neural Architectures - Leveraging Interactions for physically Structured Approximations "
partners:
  - "CSML / IIT (Italy)"
  - "DIAG / Univ. Sapienza di Roma (Italy)"
  - "Univ. Novi Sad (Serbia)"
  - ERIC / Univ. Lyon 2 
img: assets/img/project/logo-neurones.jpg
importance: 1
category: ongoing
---

Neural operators have recently shown great success in approximating complex, high-dimensional dynamical systems, such as those governed by partial differential equations (PDEs). Their advantage over traditional neural networks lies in their ability to model mappings between function spaces, capturing continuous dynamics across scales with discretization-invariant performance. Physics-informed neural operators further embed physical constraints, enforcing laws like PDEs. Trained with both data-driven and physics-based regularization, they offer faster predictions than traditional PDE solvers. However, the reasons behind their effectiveness remain unclear. A critical aspect of this ongoing exploration is determining how the complexity of these operators is controlled—whether through explicit regularization techniques or implicitly via their architectural design. In MONALISA, we aim to adopt an ambitious approach and borrow tools from the monotone operator theory, an area of nonlinear analysis recently applied to the study of nonlinear mappings modeled by neural architectures, to further understand and control the complexity of physics-informed neural operators. To implicitly control their complexity, the first research axis will leverage such connection to design neural operators whose architecture itself is guided by physical knowledge such as PDE. A starting point will be to formulate the action of an operator layer as the solution of a regularized optimization problem over function spaces. Then, we will study the impact of explicit regularization both at the layer-level as mentioned above and at the training loss level. Moreover, theoretical guarantees will be devised by hinging on monotone operator theory and on the theory of reproducing kernel Banach spaces.
Finally, we will focus on the challenging application of laser-matter interaction, where structuring the neural operator with all available knowledge is essential to overcome the scarcity of data.
