---
layout: page
permalink: /team/
title: teaching
description: Members of the MALICE team
nav: false
nav_order: 5
---

<h1>Members (work in progress)</h1>

<ul>
  {% assign sorted_members = site.data.members | sort %}
  {% for member in sorted_members %}
    <li>{{ element.firstname }}</li>
  {% endfor %}
</ul>

