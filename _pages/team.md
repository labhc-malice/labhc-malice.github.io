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

