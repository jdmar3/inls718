---
layout: page
title: Acknowledgements
nav_exclude: true
---

{% if site.acknowledgements %}
{{ site.acknowledgements }} Please address all comments and questions about this iteration of the course to <a href="mailto:{{ site.data.info.instructor.email }}">{{ site.data.info.instructor.var }}</a>.'
{% endif %}

{% if site.credits %}
# Credits

{{ site.credits }}
{% endif %}

{% if site.license %}
# License

This work is licensed under a {{ site.license }} and copyright {{ site.data.info.instructor.var }}.
{% endif %}