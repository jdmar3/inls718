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
      <i>{% if ass.deliverable == "int" %}Intermediate{% elsif ass.deliverable == "fin" %}Final{% endif %} deliverables:</i>
    </td> 
  </tr>
  {% endif %}
  <tr {% if ass.deliverable == "main" %}class=cmid{% else %}{% endif %}>
    <td>
      {% if ass.deliverable == "main" %}<strong>{{ ass.title }}</strong>{% else %}{{ ass.title }}{% endif %}
    </td>
    <td>
      {% if ass.shortdesc %}{{ ass.shortdesc }}{% endif %}
    </td>
    <td style="text-align:right">
      {% if ass.points %}{{ ass.points}}{% endif %}
    </td>
    <td style="text-align:right">
      {% if ass.weight %}{{ ass.weight }}%{% endif %}
    </td>
    <td>
      {% if ass.due %}{{ ass.due | date: "%b&nbsp;%-d" }}{% endif %}
    </td>
  </tr>
{% endfor %}      
  </tbody>
</table>