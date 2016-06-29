---
layout: default
title: Conferences
---

<h1>{{ page.title }}</h1>

<ul>
{% for conf in site.data.conferences %}
<li>
    <p><h2>{{ conf.name }}</h2></p>
    <p>{{conf.location}}, {{conf.date}}</p>
    <p><h3>{{conf.title}}</h3></p>
    <a href="{{conf.posterpdf}}"><img class="img" width="320" src="{{conf.posterpic}}"></a>
    <p>{{ % if conf.website %}}
    <a href="{{conf.website}}"> Website </a>
    {{% endif %}}
    </p>
</li>
{% endfor %}
</ul>
