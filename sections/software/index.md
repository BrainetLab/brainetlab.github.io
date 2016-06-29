---
layout: default
title: BrainetLab Members
---

<h1>{{ page.title }}</h1>
<img src="/static/img/software-header.jpg" width="100%">

## Algorithms for graph-theory of brain networks
<ul>
{% for code in site.data.software %}
<li> 
<p><h3>{{code.name}}</h3> </p>
<p><img class="img-responsive" width="140" src="{{code.image}}"></p>
<p>        {{code.description}} </p>
<p>        {% if code.website %}</p>
<p>          <a href= "{{code.website}}">{{code.website}}</a> </p>
{% endif %}
<p>{{code.fulldescription | markdownify}}</p>
</ul>
{% endfor %}
