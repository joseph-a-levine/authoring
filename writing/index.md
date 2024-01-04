---
layout: page
title: Things I've Written
---

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

For a full archive of my posts, see the bottom of my [Now](https://jablevine.com/now/#previously) page.