---
layout: page
title: Resources
weight: 11
nav_include: true
---

This is a page of resources that may (will) help you in your work for this and other courses. 
I will add to this over the course of the semester. 

There are so many links that I will break them out into their own pages below. 

{% for page in site.pages %}
  {% if page.categories contains 'resource' %}
<div class="item">
  <a href="{{ page.url }}"><h1>{{page.title}}</h1></a>
</div>
  {% endif %}
{% endfor %}