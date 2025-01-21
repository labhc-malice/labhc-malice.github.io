---
layout: page
permalink: /publications/
title: Publications
description: Group's publications in reversed chronological order (exhaustive list at the bottom).
years: [2024,2023]
nav: true
nav_order: 4
---


<input type="checkbox" id="toggle" class="toggleCheckbox" />
<label for="toggle" class="toggleContainer">
  <div>All Publications</div>   
  <div>Selected Publications</div>
</label>

<div id="toggleText">
  <div class="allPublications">You are viewing all publications.</div>
  <div class="selectedPublications">You are viewing selected publications.</div>
</div>




<a href="#exhaustive">Scroll to <b>the exhaustive list</b>.</a>

<h4>Selected publications</h4>
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f publications -q @*[year={{y}}]* %}
{% endfor %}

</div>
<div id="exhaustive">
  <hr/>
  <h4>Exhaustive consolidated list (automatic export)</h4>
    {% include labmetry_raw.html %}
</div>
<style>
  #exhaustive {
    font-size: 80%;
    h2 {
      font-size: 100%;
    }
  }
</style>
