---
layout: page
permalink: /team/
title: Team
description: Members of the MALICE team
nav: true
nav_order: 2
---

<h3>Permanent members</h3>

<div id="asgrey" style="position: absolute; width:0; height:0; margin:0;overflow: hidden;">test</div>
<div class="peoplebox">
  <style>
    .peoplebox .arrivingsoon,
    #asgrey:target ~ .peoplebox .face
    { filter: saturate(0%); }
    .person:hover .face
    { filter: contrast(130%) saturate(0%); }
  </style>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <a class="person {{ member.class }}" href="{{ member.url }}" target="_blank">
      <div class="face" style="--face: url({{site.url}}/assets/img/people/{{ member.photo }})"></div>
      <span class="who"><span>{{ member.firstname }}</span> <span class="lastname">{{ member.lastname }}</span></span>
      {% assign titles = member.title | split: ", " %}
      {% for title in titles %}
        <span class="title">{{ title }}</span>
      {% endfor %}
    </a>
  {% endfor %}
</div>

<!--ul>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <li>
      <strong><a href="{{ member.url }}" target="_blank">{{ member.firstname }} {{ member.lastname }}</a></strong>,
      {{ member.title }}
    </li>
  {% endfor %}
</ul-->

{% assign faculty_lastnames = site.data.faculty | map: 'lastname' %}


{% if site.data.postdocs %}
<h3>Postdocs</h3>

<ul>
  {% assign postdocs = site.data.postdocs | sort: 'lastname' %}
  {% for postdoc in postdocs %}
    <li>
      <strong><a href="{{ postdoc.url }}" target="_blank">{{ postdoc.firstname }} {{ postdoc.lastname }}</a></strong>,
      {{ postdoc.starting_date }} - {{ postdoc.end_date}}
      ({% for supervisor in postdoc.supervisor %}
        {% assign supervisor_parts = supervisor | split: '. ' %}
        {% if supervisor_parts.size > 1 %}
          {% assign supervisor_lastname = supervisor_parts[1] | remove: ' ' %}
        {% else %}
          {% assign supervisor_lastname = supervisor %}
        {% endif %}
        
        {% if faculty_lastnames contains supervisor_lastname %}
          <u>{{ supervisor }}</u>
        {% else %}
          {{ supervisor }}
        {% endif %}
        
        {% if forloop.last %}{% else %}, {% endif %}
      {% endfor %})<br>
    </li>
  {% endfor %}
</ul>
{% endif %}


{% if site.data.phdstudents %}
<h3>PhD students</h3>

<ul>
  {% assign phd_students = site.data.phdstudents | sort: 'lastname' %}
  {% for student in phd_students %}
    <li>
      <strong><a href="{{ student.url }}" target="_blank">{{ student.firstname }} {{ student.lastname }}</a></strong>,
      {{ student.starting_date }} - {{ student.end_date}}
      ({% for supervisor in student.supervisor %}
        {% assign supervisor_parts = supervisor | split: '. ' %}
        {% if supervisor_parts.size > 1 %}
          {% assign supervisor_lastname = supervisor_parts[1] | remove: ' ' %}
        {% else %}
          {% assign supervisor_lastname = supervisor %}
        {% endif %}
        
        {% if faculty_lastnames contains supervisor_lastname %}
          <u>{{ supervisor }}</u>
        {% else %}
          {{ supervisor }}
        {% endif %}
        
        {% if forloop.last %}{% else %}, {% endif %}
      {% endfor %})<br>
    </li>
  {% endfor %}
</ul>
{% endif %}

<h3>Former Postdocs</h3>

<ul>
  {% assign postdocs = site.data.formerpostdocs | sort: 'lastname' %}
  {% for postdoc in postdocs %}
    <li>
      <strong><a href="{{ postdoc.url }}" target="_blank">{{ postdoc.firstname }} {{ postdoc.lastname }}</a></strong>,
      {{ postdoc.starting_date }} - {{ postdoc.end_date}}
      ({% for supervisor in postdoc.supervisor %}
        {% assign supervisor_parts = supervisor | split: '. ' %}
        {% if supervisor_parts.size > 1 %}
          {% assign supervisor_lastname = supervisor_parts[1] | remove: ' ' %}
        {% else %}
          {% assign supervisor_lastname = supervisor %}
        {% endif %}
        
        {% if faculty_lastnames contains supervisor_lastname %}
          <u>{{ supervisor }}</u>
        {% else %}
          {{ supervisor }}
        {% endif %}
        
        {% if forloop.last %}{% else %}, {% endif %}
      {% endfor %})<br>
    </li>
  {% endfor %}
</ul>

<h3>Former PhD students</h3>

<ul>
  {% assign phd_students = site.data.formerphdstudents | sort: 'end_date' | reverse %}
  {% for student in phd_students %}
    <li>
      <strong><a href="{{ student.url }}" target="_blank">{{ student.firstname }} {{ student.lastname }}</a></strong>,
      {{ student.starting_date }} - {{ student.end_date}}
      ({% for supervisor in student.supervisor %}
        {% assign supervisor_parts = supervisor | split: '. ' %}
        {% if supervisor_parts.size > 1 %}
          {% assign supervisor_lastname = supervisor_parts[1] | remove: ' ' %}
        {% else %}
          {% assign supervisor_lastname = supervisor %}
        {% endif %}
        
        {% if faculty_lastnames contains supervisor_lastname %}
          <u>{{ supervisor }}</u>
        {% else %}
          {{ supervisor }}
        {% endif %}
        
        {% if forloop.last %}{% else %}, {% endif %}
      {% endfor %})<br>
    </li>
  {% endfor %}
</ul>




