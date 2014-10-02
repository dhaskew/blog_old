---
layout: post
title: Evernote Sandbox - Data Import Process
subtitle: (Or Lack Thereof)
category: posts
tags: evernote
---

I have been using the [PlaceMe App] on my iPhone for a while now.  I save the location data to my Evernote account.  I love this feature. I've got some 700+ of these notes saved in my [Evernote] account. Being able to search my location history from within [Evernote] can be very useful.

I've been working to learn [Ruby] and [Rails] via the [IronYard]. I've all been looking for a way to analyze all my location data. Unable to find an existing solution, I decided to flex the muscle between my ears and be my own miracle. 

My journey to [scratch my own itch] has led me to learning the [Evernote] api.  One of the first things I learned was that [testing in the sandbox] has some challenges. For the life of me, I couldn't figure out how I was supposed to be able to import existing notes into the sandbox environment.  At least not without getting really sad from all the recommended workarounds.  I went searching the developer forums and found the following [discussion], but that was the best I could do.  It wasn't good enough.

After some experimentation, I found a more workable solution:

* Export .enex files from my [Evernote] on the Mac.
* Save the .enex file (or files) to [Dropbox].
* Open [Evernote] on an iOS device.  If you are logged in already, log out.  Log back in, but append "#sandbox.evernote.com" to the end of your username, per the [testing in the sandbox] guide.
* After you login to Evernote, close the app and launch [Dropbox].
* Find your export file in Dropbox and "Open in Evernote"

Boom!  At this point, you should be winning at life.

I hope this helps.

[Evernote]: http://www.evernote.com
[IronYard]: http://theironyard.com
[discussion]: https://discussion.evernote.com/topic/37352-how-do-i-import-notes-into-my-sandbox-account/?hl=%2Bimport+%2Bnotes
[testing in the sandbox]: https://dev.evernote.com/doc/articles/testing.php
[PlaceMe App]: https://www.placemeapp.com/placeme/
[Rails]: http://rubyonrails.org/
[Ruby]: https://www.ruby-lang.org/en/
[scratch my own itch]: http://www.oneworldofenglish.com/english_idioms/idioms_S/scratch_an_itch.htm
[Dropbox]: https://www.dropbox.com/
