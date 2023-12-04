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


<h3>Postdocs</h3>

<ul>
  {% assign postdocs = site.data.postdocs | sort: 'lastname' %}
  {% for postdoc in postdocs %}
    <li>
      <strong><a href="{{ postdoc.url }}" target="_blank">{{ postdoc.firstname }} {{ postdoc.lastname }}</a></strong>,
      {{ postdoc.starting_date }} - {{ postdoc.end_date}},
      [{% for supervisor in postdoc.supervisor %}{{ supervisor }}{% if forloop.last %}{% else %}, {% endif %}{% endfor %}]<br>
    </li>
  {% endfor %}
</ul>


<h3>PhD students</h3>

<ul>
  {% assign phd_students = site.data.phdstudents | sort: 'lastname' %}
  {% for student in phd_students %}
    <li>
      <strong><a href="{{ student.url }}" target="_blank">{{ student.firstname }} {{ student.lastname }}</a></strong>,
      {{ student.starting_date }} - {{ student.end_date}},
      [{% for supervisor in student.supervisor %}{{ supervisor }}{% if forloop.last %}{% else %}, {% endif %}{% endfor %}]<br>
    </li>
  {% endfor %}
</ul>


