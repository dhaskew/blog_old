---
layout: post
tags: misc 
title: Things I Love - Automation Software - Part 1 
category: posts
---

I use a variety of cool applictions in my personal and professional life.  I thought I would share some of my favorite Mac OSX based automation tools with you here.  Some are free, some aren't.  All of them are useful.


# Hazel

If you spend a lot of time moving files around from one place to another or you want to keep your downloads folder organized automatically, then maybe you should check out [Hazel](http://www.noodlesoft.com/hazel.php).  Hazel is a rules engine you can use to watch files and folders based on criteria you set and then you can take some type of automated action as a result. I personally use it for all kinds of stuff.

Examples:

* I keep my downloads folder organized by file type.  Music/MP3's go in a folder, images in another.
* I auto delete files in the Trash after they have been there for a month.
* I automatically OCR my recent scans and rename files based on file content.

The potential use cases for [Hazel](http://www.noodlesoft.com/hazel.php) are too numerous to list here.  Check out the [this page](http://www.noodlesoft.com/buzz.php) for more ideas.  The app isn't free, but you wont regret it. 

# EventScripts

I love [EventScripts](http://www.mousedown.net/mouseware/EventScripts.html).  I use it to help with [backups](http://www.aske.ws/posts/backup-phase-1.html).  I use it to help deal with annoying [Citrix](http://www.aske.ws/posts/citrix_on_the_mac_needs_help_sometimes.html) issues. I use it in many other ways as well.  Stay tuned, I'm sure I will write about another use case soon enough.

If you haven't figured it out already, EventScripts will fire off an Applescript script or a shell script in response to events you can trigger on.

Example Events:

* A volume is mounted/unmounted
* USB device attached
* Headphones getting connected

A full list of events can be found [here](http://mousedown.net/mouseware/Event_Parameters.html).  Go check it out and level up your automation game.  The app isn't free, but its less than $5 USD and totally worth it.

# ControlPlane

If your primary workstation is a laptop, then [ControlPlane](http://www.controlplaneapp.com/) may be a tool you didn't realize you needed.   I work from a variety of differnt places, sometimes because I travel for work, and other times because I just want to be somewhere new like a coffee shop down the street.  It would be nice if my computer would disable the screensaver password when I'm home and reenable it when I leave.  Luckly, [ControlPlane](http://www.controlplaneapp.com/) can help us with exactly these types of situations. Just like EventScripts, [ControlPlane](http://www.controlplaneapp.com/) is a way to trigger things to happen.  They both run in the background, watching for specific things to happen.  But, unlike EventScripts, [ControlPlane](http://www.controlplaneapp.com/) doesn't require you to write any code unless you want to. Many predefined actions are already available.  

Example actions:
 
* Toggle screensaver passwords
* Toggle printer and file sharing
* Change your desktop background
* Execute a custom script

In order to use these actions, you define contexts. A context is nothing more than a rule or set of rules that define a location or a state or they can just be an arbitrary grouping that only makes sense to you.  For example, I have a "home" context that has 2 rules. The first rule sees if my home wifi is available and the second rule looks at the wifi hotspots available around me (my neighbors).  If I see the wifi networks I expect to see, then I'm pretty certain that I'm actually home and I am comfortable letting some automation happen as a result.

When one of your contexts becomes active or inactive, your code is run.  You choose which actions are run when the context becomes either active, inactive, or both.  For example, when I come home and my "home" context becomes active, [ControlPlane](http://www.controlplaneapp.com/) will:

* Disable my screensaver password
* Start a time machine backup
* Run custom backup scripts

It actually does a ton more than that, but you get the idea.  This app is free, and worth checking out if you're an Apple laptop user.


[ControlPlane](http://www.controlplaneapp.com/), [EventScripts](http://www.mousedown.net/mouseware/EventScripts.html), and [Hazel](http://www.noodlesoft.com/hazel.php) have all saved me so much time over the past couple years and its hard to imagine what life was like before I put them to work for me.  I hope they help you too.
