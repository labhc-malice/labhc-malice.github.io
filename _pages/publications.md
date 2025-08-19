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
  <div>All Publications (HAL)</div>
  <div>(old format)</div>
</label>
</div>

<div id="toggleText">
  <div class="mode1">
    <iframe class="hal-iframe" onload="setTimeout(() => this.style.height = `${window.innerHeight - this.getBoundingClientRect().top}px`, 1)" src="https://haltools.archives-ouvertes.fr/Public/afficheRequetePubli.php?struct=1192312&amp;CB_auteur=oui&amp;CB_titre=oui&amp;CB_article=oui&amp;langue=Anglais&amp;tri_exp=annee_publi&amp;tri_exp2=typdoc&amp;tri_exp3=date_publi&amp;ordre_aff=TA&amp;Fen=Aff&amp;css=../css/VisuRubriqueEncadre.css" frameborder="0" scrolling="auto"></iframe>
  </div>
  <div class="mode2">

  <div id="labmetry">
    <hr/>
    {% include labmetry_raw.html %}
  </div>
  <script>
    people = [];
    {% for p in site.data.faculty %}people.push("{{p.firstname}}"[0] +  "\\. {{p.lastname}}");{% endfor %}
    {% for p in site.data.postdoc %}people.push("{{p.firstname}}"[0] +  "\\. {{p.lastname}}");{% endfor %}
    {% for p in site.data.phdstudents %}people.push("{{p.firstname}}"[0] +  "\\. {{p.lastname}}");{% endfor %}
    {% for p in site.data.formerpostdoc %}people.push("{{p.firstname}}"[0] +  "\\. {{p.lastname}}");{% endfor %}
    {% for p in site.data.formerphdstudents %}people.push("{{p.firstname}}"[0] +  "\\. {{p.lastname}}");{% endfor %}
    people = '('+people.join('|')+')'
    people = new RegExp(people, 'g')
  </script>
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
      all.forEach(li => {
        li.querySelectorAll('u').forEach(u => {u.outerHTML = u.innerHTML}) // remove underline
        li.innerHTML = li.innerHTML.replaceAll(people, '<u>$1</u>')
        ul.append(li)
      })
    })
  </script>

  <!--div class="publications">
    MANUALLY SELECTED, TOO MUCH MAINTENANCE, DROPPED

  {%- for y in page.years %}
    <h2 class="year">{{y}}</h2>
    {% bibliography -f publications -q @*[year={{y}}]* %}
  {% endfor %}

  </div-->
    
  </div>
</div>
</div>


<!-- _pages/publications.md -->


