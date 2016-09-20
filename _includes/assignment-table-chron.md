{% marginnote 'tab1' '*Table 1*: Chronological list of required deliverables for course tasks with points' %}

<table>
  <thead>
  <tr>
    <th style="text-align:left">
      <strong>Due</strong>
    </th>
    <th style="text-align:left">
      <strong>Deliverable</strong>
    </th>
    <th style="text-align:left">
      <strong>Description</strong>
    </td>
    <th style="text-align:right">
      <strong>Points</strong>
    </th>
  </tr>
  </thead>
  <tbody>
  {% assign sorted = (site.data.assignments | sort: 'due') %}
  {% for ass in sorted %}
  {% if ass.due == "0" %}
    {% continue %}
  {% else %}
  <tr>
    <td>{{ ass.due | date: "%b&nbsp;%-d" }}</td>
    <td><a href="/assignments/chronological#{{ ass.title | slugify }}">{{ ass.title }}</a> <small>({% if ass.deliverable == "int" %}Intermediate {% elsif ass.deliverable == "fin" %}Final {% endif %}deliverable for <i>{{ ass.cattitle }}</i>)</small></td>
    <td>{{ ass.shortdesc }}</td>
    <td>{{ ass.points }}</td>
  </tr> 
  {% endif %}
  {% endfor %}      
  </tbody>
</table>