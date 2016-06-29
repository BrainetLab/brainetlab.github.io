---
layout: default
title: Publications
---

<h1>{{ page.title }}</h1>

<ul>
{% for publication in site.data.publications | sort: "date" %}
<li>
<h4>{{publication.citation | markdownify }}</h4>
<img class = "img-responsive" src = "{{publication.image}}" alt = "Key Figure" style="width: 300px;">
	<ul class="col-sm-8">
			<strong>Access the paper</strong>
			<!--PMID-->
			<li>PMID: <a href="http://www.ncbi.nlm.nih.gov/pubmed/{{publication.pmid}}" alt = "pubmed link: {{publication.pmid}}"> {{publication.pmid}}</a></li>
			<!--PMCID - optional -->
			{% if publication.pmcid %}
			<li>PMCID: <a href="http://www.ncbi.nlm.nih.gov/pmc/articles/{{publication.pmcid}}" alt = "pubmed central link: {{publication.pmcid}}"> {{publication.pmcid}}</a></li>
			{% endif %}
			
			<!-- PDF -->
			<li><a href="{{publication.pdf}}" alt = "PDF">Full Text</a></li>
			
			<!-- Datasets - optional -->
			{% if publication.data %}
			<li>Online Dataset{% if publication.data.size > 1 %}s{% endif %}: 
				{% if publication.data.size > 1 %}
				<ul>
					{% for dataset in publication.data %}
					<li><a href="http://dx.doi.org/{{dataset}}" alt = "sbgrid data repository">doi:{{dataset}}</a></li>
					{% endfor %}
				</ul>
				{% else %}
				<a href="http://dx.doi.org/{{publication.data}}" alt = "sbgrid data repository">doi:{{publication.data}}</a>
				{% endif %}
			</li>
			{% endif %}
	</ul>
{% endfor %}
</ul>

