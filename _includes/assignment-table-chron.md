{% marginnote 'tab1' '*Table 1*: List of required course tasks with grade breakdown' %}

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
  {% for ass in site.data.assignments | sort: date %}
  {% if ass.due == "0" %}
    {% continue %}
  {% else %}
  <tr>
    <td>{{ ass.due | date: "%b&nbsp;%-d" }}</td>
    <td><a href="/assignments#{{ ass.title | slugify }}">{{ ass.title }}</a> ({% if ass.deliverable == "int" %}Intermediate {% elsif ass.deliverable == "fin" %}Final {% endif %}deliverable for <i>{{ ass.cattitle }}</i>)</td>
    <td>{{ ass.shortdesc }}</td>
    <td>{{ ass.points }}</td>
  </tr> 
  {% endif %}
  {% endfor %}      
  </tbody>
</table>