---
layout: post
tags: apple eventscripts backups time_machine
title: Backups - Phase 1
category: posts
comments: true
---

# Problem

I really should do a better job of backing up my data and I've known that for quite some time.  Recently, I decided to do something about it.  There are a several 3rd party software options for OSX that could be used to backup my laptop, but I decided that for round one I would use Time Machine.  I chose it for no other reason than it was already installed and it seemed like a logical first step. I bought an external usb3 drive and configured Time Machine to use it.  You're sitting there thinking .. that wasn't so hard was it?  Why write a post about something so simple?  Good question!

After I started using Time Machine for a while I had made a few observations:

* Your backups will never start if you forget to plug in the drive.
* Unplugging your drive while a backup is in process and it is still mounted can lead to unpredictable results.
* Having the Time Machine icon in the menu bar wasn't something I wanted due to the limited real estate. Yes, I have lots of stuff in my menu bar already!
  
Being a nerd I thought, how can I help myself?  Surely I must be able to automate something to help me remember this stuff! 


# Requirements

* [Eventscripts](http://www.mousedown.net/mouseware/EventScripts.html) - $3.99 [App Store](http://itunes.apple.com/app/eventscripts/id525319418?mt=12)
* A little applescript knowledge

Note: Eventscripts support for the "Power Events" I use here are in BETA as I write this and should be a part of the official release by the time you read this.  In point of fact, this software was used in part because the author of the app agreed to add this functionality at my request.  This feature didn't exist when I discovered the application, but one email later and the author was more than happy to help me.  
  
# Solution

I wrote the following applescript to:

* Whenever I dock/plug-in my Macbook Pro, remind me to plug in my backup drive if it isn't mounted already.
* Whenever I undock my Macbook Pro:
  * Ensure a backup isn't running and alert me if it is.
  * Offer to umount the backup drive if it is mounted and not currently in use by Time Machine.

Note: I've tested everything with:

* OSX Mavericks 10.9.2
* Applescript 2.3.1
* Eventscripts 1.11b8

Hope it helps!

{% gist 9299003 %}

