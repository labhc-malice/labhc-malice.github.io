---
layout: page
permalink: /team/
title: Members
description: Members of the MALICE team
nav: false
nav_order: 5
---


<ul>
  {% assign sorted_members = site.data.members | sort %}
  {% for member in sorted_members %}
    <li>{{ member.firstname }}</li>
  {% endfor %}
</ul>


<ul>
  {% assign sorted_faculty = site.data.faculty | sort: 'lastname' %}
  {% for member in sorted_faculty %}
    <li>
      <strong>{{ member.lastname }}, {{ member.firstname }}</strong><br>
      {{ member.title }}<br>
      <a href="{{ member.url }}" target="_blank">{{ member.url }}</a>
    </li>
  {% endfor %}
</ul>
