---
layout: post
tags: jekyll ruby
title: Custom Jekyll Plugin - Keyboard Shortcuts
category: posts
---

#Problem

I wanted to know how plugins work in [Jekyll](http://www.jekyllrb.com) so I wrote a plugin to help me create the keyboard shortcut markup used in the post [Keyboard Foo - Detect Displays]({{site.baseurl}}/posts/keyboard_foo_1.html).  This was mainly a learning exercise and I may not use it much, if at all.

I want to be able to tell the plugin to produce code for a "Command + F2" keyboard shortcut without having to worry about the styling or how it looks.  That is better handled outside of markdown somewhere anyway.

#Solution
 
I wanted to be able to enter the following liquid tag in my markdown:

{% highlight ruby linenos=table %}
  keyboard_shortcut command F2  
{% endhighlight %}

Note: The opening "\{\{" and closing "\}\}" [Liquid](http://docs.shopify.com/themes/liquid-documentation/basics) tags have been omitted because I couldn't for the life of me figure out how to get [Jekyll](http://www.jekyllrb.com) to display the full [Liquid](http://docs.shopify.com/themes/liquid-documentation/basics) syntax without interpereting it.  Frustrating ... but let us continue on.

This is the html produced:

{% highlight html linenos=table %}
  {% keyboard_shortcut command F2 %}
{% endhighlight %}

This would be rendered as:

{% keyboard_shortcut command F2 %}

Note: My CSS is not posted here, put I would be happy to supply it if you [contact me]({{ site.baseurl }}/contact.html).


{% capture code_snipit %}

module Jekyll

  class KeyboardShortcutTag < Liquid::Tag

    FUNCTION_KEYS = ["F1","F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12"]

      def initialize(tag_name, text, tokens)
        super
        @text = text
      end

      def render(context)
        insert = ""
        words_array = @text.split(' ').each do |word|
          if(word.downcase == "command")
            insert += "<div class='key_command'>#{word}  ⌘</div>"
          elsif(FUNCTION_KEYS.count(word.upcase) == 1)
            insert += "<div class='key_function'>#{word}</div>"
          else
            insert += "<div class='key_normal'>#{word}</div>"
          end
        end
            #insert = "<div class='key_command'>#{@text}</div>"
            html = Kramdown::Document.new(insert).to_html
      end

    end
end

Liquid::Template.register_tag('keyboard_shortcut', Jekyll::KeyboardShortcutTag)

{% endcapture %}

{% highlight ruby linenos=table %}
{{ code_snipit }}
{% endhighlight %}

Admittedly, my code only works when using Kramdown as the markdown converter.  In an ideal world my code would use whatever is the configured default.  Kramdown just happens to be my default.

I hope this helps you write your own plugins!
