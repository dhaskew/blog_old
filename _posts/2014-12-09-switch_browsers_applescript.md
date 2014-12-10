---
layout: post
title: Switch Browsers Quickly 
category: posts
tags: applescript
---

# Problem

You're using your favorite browser, lets say Chrome, and the browser doesn't render the page correctly for some reason;  Or better yet, a plugin or video doesn't work or play correctly.

What do you do?

Well, you could refresh the page.  That would be a very reasonable response.  But, what if that doesn't work?  There are other things we could do to investigate, but more times than not I find myself opening up an alternative browser and seeing if the page works that way.  It almost always does.  In order to make that happen you have to:

* Copy the url from the missbehaving browser tab.
* Launch a new browser window.
* Paste in the url for the page in question.
* Load the page in the new browser.

This isn't that many steps, not really.  Application launchers like [Alfred] make launching new applications very easy.  Throw in some keyboard shortcuts and you don't really have to take your hands off the keyboard to accomplish it.

Having said all of that, the process could still be faster.  Speed can be the difference between disturbing your work for real and just being a slight nuisance.

# Solution

I've written an applescript to make the process only one command.  Executing the script below via [Alfred] makes the error recovery process that much faster.

{% highlight applescript %}
property theURL : ""
property safariState : ""

on appIsRunning(appName)
  tell application "System Events" to (name of processes) contains appName
end appIsRunning

tell application "Google Chrome"
  set theURL to URL of active tab of window 1
end tell

if appIsRunning("Safari") then
  set safariState to "Running"
end if

tell application "Safari"

  activate
  reopen

  if safariState is equal to "Running" then

    tell window 0
      open location theURL
    end tell

  else

    tell window 0
      set URL of (current tab) to theURL
    end tell

  end if

end tell
{% endhighlight %}

I hope this helps you.

[Alfred]: http://alfredapp.com

