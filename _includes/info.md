<label for='info' class='margin-toggle'> &#8853;</label>
<input type='checkbox' id='info' class='margin-toggle'/>
<span class='marginnote'>
<span class="date larger">{{ "Course Info" | upcase }}</span><br/><br/>
<span class="{{ site.data.info.instructor.icon }}">&nbsp;**Instructor:**</span> [{{ site.data.info.instructor.var }}]({{ site.data.info.instructor.link }})<br/>
<span class="{{ site.data.info.email.icon }}">&nbsp;**Email:**</span> <a href="{{ site.data.info.email.link }}">{{ site.data.info.email.var }}</a><br/>
<span class="ico-book">&nbsp;**Office hours:**</span> {{ site.data.dates.office.dow }}, {{ site.data.dates.office.time }}, {{ site.data.dates.office.place }} {{ site.data.dates.office.note }}<br/>
<span class="{{ site.data.info.time.icon }}">&nbsp;**Time:**</span> {{ site.data.info.time.var }}<br/>
<span class="{{ site.data.info.days.icon }}">&nbsp;**Days:**</span> {{ site.data.info.days.var }}<br/>
<span class="{{ site.data.info.location.icon }}">&nbsp;**Location:**</span> {{ site.data.info.location.var }}<br/>
<span class="ico-calendar-open">&nbsp;**Dates:**</span> {{ site.data.dates.begin.date | date: "%-d %B %Y" }} - {{ site.data.dates.end.date | date: "%-d %B %Y" }}<br/>
<span class="ico-pencil">&nbsp;**Exam date:**</span> {{ site.data.dates.exam.time  }} {{ site.data.dates.exam.date | date: "%-d %B %Y" }}<br/>
<span class="{{ site.data.info.github.icon }}">&nbsp;**GitHub**</span>: [{{ site.data.info.github.link }}]({{ site.data.info.github.link }})<br/>
<span class="{{ site.data.info.slack.icon }}">&nbsp;**Slack**</span>: [{{ site.data.info.slack.link }}]({{ site.data.info.slack.link }})<br/>
<span class="{{ site.data.info.sakai.icon }}">&nbsp;**Sakai**</span>: [{{ site.data.info.sakai.link }}]({{ site.data.info.sakai.link }})<br/>
<span class="{{ site.data.info.rss.icon }}">&nbsp;**Schedule feed**</span>: [{{ site.url }}{{ site.data.info.rss.link }}]({{ site.data.info.rss.link }})<br/>
</span>