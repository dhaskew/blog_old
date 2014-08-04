---
layout: post
tags: apple applescript citrix
title: Citrix On The Mac Needs Help Sometimes
category: posts
---

#Problem

I love my Mackbook and it is the best work machine I've ever used.  Having said that, I spend just as much time running apps via [Citrix](http://www.citrix.com) as I do running native applications. Having run many different Windows apps at many different client sites, both as a Mac OSX user and a Microsoft Windows user, I have come to a few conclusions:

* The Citrix client on Windows is a better product than the Mac version.
* The stability and reliabilty of Citrix apps/farms will vary widely.
* When running Citrix on the Mac, you can't depend on the remote applications to display locally with any consistancy.

What do I mean by consistancy?  Put simply, sometimes I launch a Citrix application and it starts in the center of the screen.  Sometimes the application will start on my main laptop screen, but sometimes it will start on my external display.  Sometimes, when the apps start they don't display at all!  Or so I thought, until I realized they where starting up off screen.  This is where [SizeUp](http://www.irradiatedsoftware.com/sizeup/) comes to the rescue!  SizeUp is an application designed, at least in part, to manipulate the front most window of the active application.  The best part is that you can use keyboard shortcuts to operate it.  There are keyboard shortcuts to move windows arround to various parts of the screen, to make windows full screen, and my personal life saver, a keyboard shortcut to move the application window to the center.

Now that we have a potential solution to this nagging problem, what else could we possibly need? Well, as it turns out, I really only want [SizeUp](http://www.irradiatedsoftware.com/sizeup/) to be running when I'm using Citrix.  The problem is, I forget to launch it.  As if the crazy window behavior isn't bad enough, you often only get one chance to invoke the keyboard shortcut you need to fix the problem.  Sometimes you'll switch focus on accident and you'll have no choice but to kill the Citrix session and restart it! That sucks, to say the least.

If only there was a way to ensure that [SizeUp](http://www.irradiatedsoftware.com/sizeup/) was running when I start Citrix.  As it turns out there is!  I wrote an applescript that will launch [SizeUp](http://www.irradiatedsoftware.com/sizeup/) whenever the Citrix Viewer application is about to start up.

# Requirements

* [Eventscripts] (http://www.mousedown.net/mouseware/EventScripts.html) from Mousedown- $3.99 [App Store] (http://itunes.apple.com/app/eventscripts/id525319418?mt=12)
* [SizeUp](http://www.irradiatedsoftware.com/sizeup/) from Irradiated Software - $13
* A little applescript knowledge

Note: SizeUp has a trial mode that is fully funtional.  It will, however, ask you to spend some money on occasion.

The following script, when tied to the "Application will launch" event in [Eventscripts] (http://www.mousedown.net/mouseware/EventScripts.html) will do just what we need.

#Solution

{% capture code_snipit %}
on run eventArgs
	set thisTrigger to trigger of eventArgs
	if thisTrigger is "Application will launch" then
		set appName to |applicationName| of eventArgs
		if appName is "Citrix Viewer" then
			tell application "SizeUp"
				activate
			end tell
		end if
	end if
end run
{% endcapture %}

{% highlight applescript linenos=table %}
{{ code_snipit }}
{% endhighlight %}

[Open in Script Editor](applescript://com.apple.scripteditor?action=new&script={{ code_snipit | uri_escape }}")

Note: I've tested everything with:

* OSX Mavericks 10.9.2
* Applescript 2.3.1
* Eventscripts 1.11b8
* SizeUp 1.6

I hope this saves you time and energy.  I spent a lot of time searching the internet for a workaround so you don't have to (hopefully).

