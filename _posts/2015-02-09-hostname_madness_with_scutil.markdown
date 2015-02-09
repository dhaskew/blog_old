---
layout: post
title: Hostname Madness
category: posts
tags: mac
---

# Problem

I work a lot on the go.  I connect to a lot of different wireless access points and, as a result, use a lot of different dhcp servers indirectly. This isn't new or unusual.  This happens to all of us.  Most of us never think about this fact, myself included.  I've used a couple lately that changed my hostname when I wasn't expecting it.  Whenever this would happen I would fire up system preferences and change it back.  That process turns out to be quite a few clicks. I started looking for a way to make this same change from the command line.

# Solution

As it turns out, there is a command line utility that can do that for us.

For example, if we want to make our hostname set to "myworkstation" on the "mydomain.com" domain, we would issue the following command:

{% highlight bash %}
sudo scutil --set HostName myworkstation.mydomain.com
{% endhighlight %}

By all means read the manpage for further details and for other ideas about how to utilize this tool safely and effectively:

{% highlight bash %}
man scutil
{% endhighlight %}

I hope this helps.
