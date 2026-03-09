---
layout: page
title: "ANR DATES <br/>(2025-2029)"
description: "<b> Domain Adaptation on Time Series  </b>"
partners:
  - "IRISA (Rennes)"
  - "ERICSSON (Firm)"

img: assets/img/project/logo-defaut-malice6.jpg
importance: 1
category: ongoing
---

Machine learning models generally assume that training and test data are identically distributed. However, this assumption often breaks down in real-world applications due to shifting data distributions over time and across contexts. Domain Adaptation (DA) tackles this challenge by allowing models to leverage labeled data from one domain to perform tasks in a different, often unlabeled, target domain. Time Series (TS) consists of data points recorded over time and is increasingly prevalent with autonomous sensors and online activities.In the context of DA, TS presents several challenges, including class imbalance, temporal drift, correlations and dependencies, and hierarchical structures that manifest as multi-scale periodic patterns. The DATeS project addresses three fundamental challenges of DA for TS. The first challenge is efficiently achieving both temporal and domain alignment, which we will tackle by proposing new formulations based on generalized optimal transport and conditional flow matching. The second challenge involves adapting to missing data and source-free domain adaptation, where only a learned model is available; we will tackle this in the lens of optimal transport approaches. The third challenge relates to unsupervised DA (with few or no target labels) and involves the general problem of selecting the best model, source domain(s), and hyperparameters without access to a validation set. We will address this challenge by learning metrics tailored for TS in DA and through meta-learning, enabling effective adaptation from multiple sources. This project aims to generate significant new knowledge in the field of DA for TS, addressing critical challenges that are currently under-explored. While DATeS is motivated by the challenges posed by time series data, it will also inspire innovative developments that have broader applicability beyond the TS domain.