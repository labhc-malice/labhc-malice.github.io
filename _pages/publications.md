---
layout: page
permalink: /publications/
title: Publications
description: Group's publications in reversed chronological order.
years: [2025,2024,2023]
nav: true
nav_order: 4
---

<div>
<input type="checkbox" id="toggle" class="toggleCheckbox" />
<div class="hcentered">
<label for="toggle" class="toggleContainer">
  <div>All Publications</div>   
  <div>Selected Publications</div>
</label>
</div>
	
<div id="toggleText">
  <div class="allPublications">
	<div id="exhaustive">
	  <hr/>
		{% include labmetry_raw.html %}
	</div>
	<script>
		document.querySelectorAll('#exhaustive ul').forEach(ul => {
			const all = [...ul.querySelectorAll('li')]
			all.forEach(li => li.remove())
			const k = o => o.textContent.split('\n').join('')
				.replace(/^.*(CORE Ranking *: |IF *: [^ ]* \()/g, '! ')
				.replace(/^[^!]/g, 'zzz ') // unranked last
				.replace(/A\*/g, 'a') // A* is better than A
				.replace(/Q1/g, 'A2') // Q1 is better than B
				.replace(/Q2/g, 'B2') // Q2 is better than C
			console.log(ul, all, all.map(k))
			all.sort((a,b)=>k(a).localeCompare(k(b)))
			console.log(ul, all, all.map(k))
			all.forEach(li => ul.append(li))
		})
	</script>

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


