---
layout: distill
title: Reading group
description: Catch up what you have missed in our weekly reading groups
giscus_comments: false
date: 2023-06-07

authors:
  - name: Rémi Emonet
    url: "https://home.heeere.com/"
    affiliations:
      name: LabHC, UJM
  - name: Jordan Frecon
    url: "https://jordan-frecon.com/"
    affiliations:
      name: LabHC, UJM
  - name: Amaury Habrard
    url: "https://perso.univ-st-etienne.fr/habrarda/"
    affiliations:
      name: LabHC, UJM

bibliography: 2018-12-22-distill.bib

# Optionally, you can add a table of contents to your post.
# NOTES:
#   - make sure that TOC names match the actual section names
#     for hyperlinks within the post to work correctly.
#   - we may want to automate TOC generation in the future using
#     jekyll-toc plugin (https://github.com/toshimaru/jekyll-toc).



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


{% assign reading_list = site.readings | sort: "date" | reverse %}
{% for reading in reading_list %}
## {{ reading.date | date: "%Y.%m.%d"}}
<div class="publications">
	{% bibliography -f papers -q @*[key={{reading.key}}]* %}
	<a href="{{ reading.code }}"><i class="fab fa-github"></i> Code</a>
</div>



{{ reading.content }}
{% endfor %}

