---
layout: page
permalink: /publications/
title: Publications
description: Group's publications in reversed chronological order.
years: [2024,2023]
nav: true
nav_order: 4
---

<div><input type="checkbox" id="toggle" class="toggleCheckbox" />
<label for="toggle" class="toggleContainer">
  <div>All Publications</div>   
  <div>Selected Publications</div>
</label>

	
<div id="toggleText">
  <div class="allPublications">
	<div id="exhaustive">
	  <hr/>
		{% include labmetry_raw.html %}
	</div>
	<style>
	  #exhaustive {
		font-size: 80%;
		h2 {
		  font-size: 100%;
		}
	  }
      .allPublications li {
          margin-bottom: 1em;
      }
	</style>

	</div>
  <div class="selectedPublications">
		<div class="publications">

	{%- for y in page.years %}
	  <h2 class="year">{{y}}</h2>
	  {% bibliography -f publications -q @*[year={{y}}]* %}
	{% endfor %}

	</div>
	  
	</div>
</div>
</div>


<!-- _pages/publications.md -->


