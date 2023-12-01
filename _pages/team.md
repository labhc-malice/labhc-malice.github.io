---
layout: page
permalink: /team/
title: Team
description: Members of the MALICE team
nav: false
nav_order: 5
---

<h2>Faculty</h2>

<ul>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <li>
      <strong><a href="{{ member.url }}" target="_blank">{{ member.firstname }} {{ member.lastname }}</a></strong>,
      {{ member.title }}
    </li>
  {% endfor %}
</ul>



<h2>PhD students</h2>

<ul>
  {% assign phd_students = site.data.phdstudents %}
  {% for student in phd_students %}
    <li>
      <strong><a href="{{ member.url }}" target="_blank">{{ member.firstname }} {{ member.lastname }}</a></strong>,
      ({{ student.starting_date }} - {{ student.end_date}})
      [{% for supervisor in student.supervisor %}{{ supervisor }}{% if forloop.last %}{% else %}, {% endif %}{% endfor %}]<br>
    </li>
  {% endfor %}
</ul>
