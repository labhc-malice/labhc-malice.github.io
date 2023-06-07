---
layout: distill
title: Reading group
description: Catch up what you have missed in our weekly reading groups
giscus_comments: false
date: 2023-06-07

authors:
  - name: Albert Einstein
    url: "https://en.wikipedia.org/wiki/Albert_Einstein"
    affiliations:
      name: IAS, Princeton
  - name: Boris Podolsky
    url: "https://en.wikipedia.org/wiki/Boris_Podolsky"
    affiliations:
      name: IAS, Princeton
  - name: Nathan Rosen
    url: "https://en.wikipedia.org/wiki/Nathan_Rosen"
    affiliations:
      name: IAS, Princeton

bibliography: 2018-12-22-distill.bib

# Optionally, you can add a table of contents to your post.
# NOTES:
#   - make sure that TOC names match the actual section names
#     for hyperlinks within the post to work correctly.
#   - we may want to automate TOC generation in the future using
#     jekyll-toc plugin (https://github.com/toshimaru/jekyll-toc).
toc:
  - name: 2023-06-05

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }

---

## 2023-06-05

Self-Adaptive Physics-Informed Neural Networks using a Soft Attention Mechanism

<d-cite key="2021_Mclenny_L_w_aaai-mlps_sapinns"></d-cite>
- Keyword: SA-PINNs
- Code: https://github.com/levimcclenny/SA-PINNs
        
**Context:** PINNs may not fit the residual/boundary/initial conditions in "rapidly varying regions" depending on the PDE.

**Proposed solution:** The neural network learns which regions of the solution are difficult and is forced to focus on them. The self-adaptation weights specify a soft multiplicative soft attention mask, like the one used in computer vision. Each data point is associated with its self-adaptation weight.
- Cons:
	- 3 hyperparameters per training instance + one learning rate
	- Max? A bit heuristic
	- Need to always use the same colocation points


**Proposed solution (SGD):** extension to handle varying colocation points. The basic idea is to use a spatial-temporal predictor of the value of self-adaptive weights for the newly sampled points. Resort to a Gaussian process.


**Other previously proposed solutions:** 
- Non-adaptive Weighting [Colby et al., Computational Physics, 2021]: put premium in the loss for the initial 
- Learning Rate Annealing [Wang et al., 2020]: the weights are learning rate coefficients that change for each epoch according to statistics calculated using the data of the back-propagation
- Neural Tangent Kernel (NTK, https://en.wikipedia.org/wiki/Neural_tangent_kernel) Weighting: based on the evolution of the eigenvalues
- Mimimax Weighting: update the weights during training using gradient descent for the network weights, and gradient ascent for the loss weights, seeking 
to find a saddle point in weight space.



