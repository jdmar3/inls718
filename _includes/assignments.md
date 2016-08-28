{% for ass in site.data.assignments %}

{% if ass.deliverable == "main" %}
# {{ ass.title }}
{% elsif ass.deliverable == "rec" %}
## {{ ass.title }}
{% else %}
  {% if ass.first == "1" %}
## {% if ass.deliverable == "int" %}Intermediate{% elsif ass.deliverable == "fin" %}Final{% endif %} deliverables: 
  {% endif %}
  - <a id="{{ ass.title | slugify }}"></a>{{ ass.title }}<br/>({% if ass.points %}{{ ass.points }} points{% endif %}{% if ass.due %}, **due: {{ ass.due | date: "%-d %b" }}**{% endif %})<br/><br/>{{ ass.shortdesc }}
{% endif %}
{% if ass.deliverable == "main" %}
{{ ass.points }} points total, {{ ass.weight }}% of final grade
{% elsif ass.deliverable == "rec" %}
{{ ass.points }} points
{% endif %}

{% if ass.deliverable == "main" or ass.deliverable == "rec" %}
{% if ass.due %}Due: {{ ass.due }}{% endif %}

{% if ass.description %}{{ ass.description }}{% endif %}

{% if ass.shortdesc %}**tl;dr:** {{ ass.shortdesc }}{% endif %}

{% if ass.eval %}**Evaluation criteria:** {{ ass.eval }}{% endif %}

{% endif %}

{% endfor %}