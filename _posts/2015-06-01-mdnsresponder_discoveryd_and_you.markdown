---
layout: post
title: mDNSResponder, discoveryd and You 
category: posts
tags: osx 
---

I had network issues recently and I had to kill the “discoveryd” process from activity monitor to get [DNS] resolution working again.

I would, in the past, execute:

{% highlight bash %}
sudo killall mDNSResponder
{% endhighlight %}

There is a replacement now for Yosemite, called discoveryd.  On Yosemite, you would do this instead:

{% highlight bash %}
sudo killall discoveryd
{% endhighlight %}

Just as I was about to post this I learned that Apple [will revert back to mDNSResponder].  It seems I’m not the only one with this problem.

I hope this helps.

[will revert back to mDNSResponder]: http://www.macrumors.com/2015/05/26/apple-discoveryd-replaced-with-mdnsresponder/
[DNS]: http://en.wikipedia.org/wiki/Domain_Name_System
