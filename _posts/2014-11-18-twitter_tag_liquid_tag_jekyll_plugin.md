---
layout: post
title: Jekyll Plugin - Twitter Tags
category: posts
tags: jekyll plugins twitter
---

# Problem

I needed a way to quickly link to Twitter hashtag searches from a blog post, similar to how I have done in an [older post]. I decided to write another jekyll plugin, similar to the [older one], to help me create Twitter links.

# Solution

Here's an example of how you use the plugin:

{% highlight html %}
{% raw %}
{% twitter_tag smallvictories couldbeworse %}
{% endraw %}
{% endhighlight %}

Here's an example of the output:
{% twitter_tag smallvictories couldbeworse %}

As you can see, it supports multiple hashtags terms in a single call.  Also note the absense of the "#" for each term.

# Code

{% highlight ruby %}
module Jekyll
  class TwitterTagTag < Liquid::Tag

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        insert = ""
        words_array = @text.split(' ').each do |word|
          insert += "<a href='https://twitter.com/search?q=%23#{word}'>##{word}</a> "
        end
          html = Kramdown::Document.new(insert).to_html
      end

    end
end

Liquid::Template.register_tag('twitter_tag', Jekyll::TwitterTagTag)
{% endhighlight %}

I hope this helps!

[older post]: {% post_url 2014-10-06-car_wreck2 %}
[older one]: {% post_url 2014-08-15-jekyll_plugin_1 %}
