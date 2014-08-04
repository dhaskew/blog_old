---
layout: post
tags: osx
title: The Day The Music Died
category: posts
---

# Problem 

My audio stopped working on my MacBook Pro while I was away from my desk getting something to drink.  I don't remember if the computer was sleeping or not or whether the screen had just shutoff.  The thing wakes up so fast its hard to tell the difference sometimes.  I mention it because putting my misc apple devices to sleep has sometimes produced interesting results in the past.  Anyway, I went and asked Google for some help.  Luckily, I stumbled upon the following [post](http://www.cnet.com/how-to/how-to-reset-the-audio-system-in-os-x/).  The post content was usuful, but it was the comments that ultimately got me working again.

# Requirments

* Basic terminal knowledge

Note: I tested on a late 2013 Retina MacBook Pro with Mac OSX 10.9.2, but this workaround probably works on other setups as well.

# Solution

{% capture snipit2 %}

sudo killall coreaudiod

sudo kextunload /System/Library/Extensions/AppleHDA.kext

sudo kextload /System/Library/Extensions/AppleHDA.kext

{% endcapture %}

{% highlight bash linenos=table %}
{{ snipit2 }}
{% endhighlight %}


I hope this helps you.

