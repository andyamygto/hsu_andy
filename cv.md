---
layout: page
title: CV
permalink: /cv/
---

{% if site.author.cv_pdf %}<p><a class="button" href="{{ site.author.cv_pdf | relative_url }}">Download full CV (PDF)</a></p>{% endif %}

## Research interests

First-principles many-body perturbation theory (*GW*, BSE, GWPT) ·
electron–phonon coupling and phonon-mediated superconductivity ·
charge-density waves · two-dimensional and layered materials ·
first-principles phonon methods

## Research groups

<!-- Add your degree, position title and years to each entry. -->
<div class="cv-entry">
  <div class="cv-what"><strong>University of Southern California</strong>, Los Angeles, CA<br>
  Mork Family Department of Chemical Engineering and Materials Science. Group of Prof. Zhenglu Li</div>
</div>
<div class="cv-entry">
  <div class="cv-what"><strong>Tamkang University</strong>, New Taipei City, Taiwan<br>
  Group of Prof. Hung-Chung Hsueh</div>
</div>

## Methods & tools

- **Theory:** DFT, DFPT, *GW*, Bethe–Salpeter equation, *GW* perturbation theory, Migdal–Eliashberg theory, *ab initio* downfolding
- **Programming:** Fortran, Python; large-scale calculations on HPC systems

## Publications

{% assign pubs = site.data.publications %}
<ol class="pubs compact">
{%- for p in pubs %}
{% include pub.html pub=p %}
{%- endfor %}
</ol>
