---
layout: page
permalink: /team/
title: Members
description: Members of the MALICE team
nav: false
nav_order: 5
---



<ul>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <li>
      <strong><a href="{{ member.url }}" target="_blank">{{ member.firstname }} {{ member.lastname }}</a></strong>,
      {{ member.title }}
    </li>
  {% endfor %}
</ul>
