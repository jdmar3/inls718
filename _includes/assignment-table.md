{% marginnote 'tab1' '*Table 1*: List of required course tasks with grade breakdown' %}

<table>
  <thead>
  <tr>
    <th style="text-align:left">
      <strong>Assignment</strong>
    </th>
    <th style="text-align:left">
      <strong>Description</strong>
    </td>
    <th style="text-align:right">
      <strong>Points</strong>
    </th>
    <th style="text-align:right">
      <strong>Weight</strong>
    </th>
    <th style="text-align:left">
      <strong>Due</strong>
    </th>
  </tr>
  </thead>
  <tbody>
{% for ass in site.data.assignments %}
  {% if ass.first == "1" %}
  <tr>
    <td colspan="5">
      <strong><i>{% if ass.deliverable == "int" %}Intermediate{% elsif ass.deliverable == "fin" %}Final{% endif %} deliverables:</i></strong>
    </td> 
  </tr>
  {% endif %}
  <tr {% if ass.deliverable == "main" %}class=cmid{% else %}{% endif %}>
    <td>
      <a href="/assignments#{{ ass.title | slugify }}">{% if ass.deliverable == "main" %}<strong>{{ ass.title }}</strong>{% else %}{{ ass.title }}{% endif %}</a>
    </td>
    <td>
    {% if ass.shortdesc %}{% if ass.deliverable == "main" %}<strong>{% endif %}{{ ass.shortdesc }}{% if ass.deliverable == "main" %}</strong>{% endif %}{% endif %}
    </td>
    <td style="text-align:right">
      {% if ass.points %}{% if ass.deliverable == "main" %}<strong>Total:&nbsp;{% endif %}{{ ass.points}}{% if ass.deliverable == "main" %}</strong>{% endif %}{% endif %}
    </td>
    <td style="text-align:right">
      {% if ass.weight %}<strong>{{ ass.weight }}%</strong>{% endif %}
    </td>
    <td>
      {% if ass.due %}{{ ass.due | date: "%b&nbsp;%-d" }}{% endif %}
    </td>
  </tr>
{% endfor %}      
  </tbody>
</table>