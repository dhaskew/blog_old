---
layout: post
title: My iMessage badge count is wrong
category: posts
tags: iMessage
---

I had this annoying problem the other day with iMessage.   It insisted I had unread messages and had a badge count of 1 on the icon in the Dock.  

I fixed it by opening a terminal and ...

{% highlight bash %}
quit iMessage
killall Dock
{% endhighlight %}

I found the follow [forum post] and it lists some additional solutions that may help.

I hope this helps.

[forum post]: http://forums.macrumors.com/threads/unread-messages-badge-on-mbp-is-stuck.1806575/