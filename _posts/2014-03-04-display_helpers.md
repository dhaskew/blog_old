---
layout: post
tags: apple applescript
title: Display Helpers
category: posts
---

Not too long ago I purchased a new Macbook Pro.  This laptop is, by far, the best laptop I have ever owned.  There is one caveat though : *The "Retina" screen makes my eyes really tired with extended use*.  It has been necessary to use external monitors after about 6-8 hours of looking at the built-in display.  Problem solved right?  Well, not exactly ...

After several days of doing this my eyes began to feel better. However, it is clear to me that OSX doesn't handle multiple monitors, interal or external, as fluidly as it could.  I found myself writing applescript again.  Below I've listed a few code snipits you may find useful.

Problem, how do I tell how many displays I have connected?

{% capture snipit2 %}
tell application "Image Events"
  return count displays
end tell
{% endcapture %}

{% highlight applescript linenos=table %}
{{ snipit2 }}
{% endhighlight %}

[Open in Script Editor](applescript://com.apple.scripteditor?action=new&script={{ snipit2 | uri_escape }}")

How do I make a window \[un\]hidden / \[in\]visible?

{% capture code_snipit %}
tell application "System Events"
  set visible of every process whose visible is false and name is "iTunes" to true
  set visible of every process whose visible is false and name is "Spotify" to true
end tell
{% endcapture %}

{% highlight applescript linenos=table %}
{{ code_snipit }}
{% endhighlight %}


[Open in Script Editor](applescript://com.apple.scripteditor?action=new&script={{ code_snipit | uri_escape }}")




