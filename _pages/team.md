---
layout: page
permalink: /team/
title: Team
description: Members of the MALICE team
nav: true
nav_order: 5
---

<h3>Faculty</h3>

<ul>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <li>
      <strong><a href="{{ member.url }}" target="_blank">{{ member.firstname }} {{ member.lastname }}</a></strong>,
      {{ member.title }}
    </li>
  {% endfor %}
</ul>

{% assign faculty_lastnames = site.data.faculty | map: 'lastname' %}


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



<div class="danger-box-titled">
<span class="title">Open positions</span>
<ul>
<li>Postdoc: <em>Modeling, optimization and transfer in physics-based machine learning</em> (<a href="https://jordan-frecon.com/download/postdoc/2024-Postdoc-LabHC-PhysicsML.pdf">offer</a>)</li>
<li>PhD Thesis: <em>Toward frugal machine learning with physics-aware models</em> (<a href="https://jordan-frecon.com/download/thesis/2024-Thesis-LabHC-FrugalPhysicsML.pdf">offer</a>)</li>
<li>Internship: <em>Discovering the laws of physics through the bilevel learning of neural operators</em> (<a href="https://jordan-frecon.com/download/internship/2024-Internship-LabHC-Bilevel_PhysicsML.pdf">offer</a>)</li>
</ul>
</div>


