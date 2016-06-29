---
layout: default
title: BrainetLab Members
---
<h1>{{ page.title }}</h1>

<ul>
{% for person in site.data.members %}
    <div class="col-md-1">
        <img class="img-circle" width="140" src="{{person.image}}"><br>
        <strong>{{person.name}}</strong> <br>
        {{person.position}} <br>
        <em>{{person.email}}</em> <br>
        {% if person.website %}
          <a href= "{{person.website}}">{{person.website}}</a> <br>
        {% endif %}
        {% if person.scholar %}
          <a href= "http://scholar.google.com/citations?user={{person.scholar}}"> Scholar Citations </a> <br>
        {% endif %}

        {% if person.researchgate %}
          <a href= "http://researchgate.com/profile/{{person.researchgate}}"> Research Gate </a> <br>
        {% endif %}

        {% if person.linkedin %}
          <a href= "http://linkedin.com/in/{{person.linkedin}}"> Linked In </a> <br>
        {% endif %}

        {% if person.twitter %}
          <a href= "http://twitter.com/{{person.twitter}}"> @{{person.twitter}} </a> <br>
        {% endif %}
    </div>
    <div class="col-md-1">
    {{person.description | markdownify}}
    </div>
{% endfor %}
</uv>