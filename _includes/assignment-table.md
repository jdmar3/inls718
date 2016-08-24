# Assignment Breakdown

{% marginnote 'tab1' '*Table 1*: List of required course tasks with grade breakdown' %}

| **Assignment** | | **Due date** |  
| :------------- | ------: | -----------: |  
{% for ass in site.data.assignments %}
{% if ass.deliverable == "main" %}
| **Title**      | {% if ass.percent %}{{ ass.percent }}%{% endif %} | | 
{% elsif ass.deliverable == "rec" %}
| {{ ass.title }} | | {% if ass.points %}{{ ass.points}}{% endif %} | {% if ass.due %}{{ ass.due | date: "%-d %B" }}{% endif %} |
{% elsif ass.deliverable == "int" %}
{% if ass.first = "1" %}| Intermediate deliverables: | | |{% endif %}
| {{ ass.title }} | | {% if ass.points %}{{ ass.points}}{% endif %} | {% if ass.due %}{{ ass.due | date: "%-d %B" }}{% endif %} |
{% elsif ass.deliverable == "fin" %}
{% if ass.first = "1" %}| Final deliverables: | | |{% endif %}
| {{ ass.title }} | | {% if ass.points %}{{ ass.points}}{% endif %} | {% if ass.due %}{{ ass.due | date: "%-d %B" }}{% endif %} |
{% endif %}
{% endfor %}