---
layout: post
title: Liquid Case Statement Example
category: posts
tags: jekyll liquid
---

I use [Jekyll] to create a mostly static website. I also use some [Liquid] templates to add dynamic elements to my otherwise static site.  I was trying to figure out how to iterate over all the posts on my site and take action on only those posts from 2014.  

Below is an example of printing 'hello world' for every post with a post date in 2014.

{% highlight html %}
{% raw %}
{% for post in site.posts %}
  {% assign y = post.date | date: "%Y" %}
  {% case y %}
    {% when '2014' %}
      <li>Hello World </li>
  {% endcase %}
{% endfor %}
{% endraw %}
{% endhighlight %}

I hope this helps you.

[Jekyll]: http://jekyllrb.com
[Liquid]: https://github.com/Shopify/liquid
