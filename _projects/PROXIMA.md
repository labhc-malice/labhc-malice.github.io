---
layout: page
title: EUR SLEIGHT PROXIMA <br/>(2025-2027)
description: "<b> Unfolded proximal neural operators for inverse problems in imaging  </b>" 
partners:
  - "L. Denis (LabHC-UJM)"

img: assets/img/project/logo-defaut-malice6.jpg
importance: 1
category: ongoing
---

This project will develop a novel framework for solving inverse problems in imaging, focusing on the problem of joint reconstruction of a sequence of high-quality images from multiple degraded or incomplete observations. Classical approaches often rely on discretized formulations that are sensitive to resolution changes, leading to poor generalization across different scales. By operating directly in function spaces, our approach will ensure discretization invariance, allowing models trained on one resolution to generalize seamlessly to others. In this context, we will define and explore the extension of unfolded proximal networks – which design the deep network architecture itself by leveraging the variational formulation associated with the inverse problem – to function spaces, leading to unfolded proximal neural operators. This will allow for an adaptive and principled way to encode physical constraints and optimization-based priors directly into the learning process. Such an approach is particularly well-suited for ill-posed settings and applications where the sample undergoes unknown deformations, where classical data-driven methods often fail. A key challenge will be to extend generalization guarantees of unfolded networks beyond discrete settings, requiring new theoretical developments at the intersection of operator learning, proximal optimization, inverse problems, and statistical learning theory. We will also design self-supervised training strategies so that our methods can be applied to experimental data without requiring ground-truth images during the learning step (i.e., the clean and noise-free images corresponding to each actual observation). This framework will offer a scalable and interpretable solution for high-dimensional inverse problems in imaging, with potential applications in surface characterization or biological sample reconstruction.