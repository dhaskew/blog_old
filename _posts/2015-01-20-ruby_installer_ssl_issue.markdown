---
layout: post
title: RubyInstaller SSL Issue On Windows 
category: posts
tags: ruby windows
---

I've done some work with Ruby on Windows lately and I used the [RubyInstaller] project to install the interpereter. The only problem is, recent [RubyGems] changes have caused some connection issues between Ruby and the [RubyGems] servers when installing gems.  The changes relate to SSL certificates and the [RubyInstaller] downloads have not, at least not at the time of this writing, been updated to include the new SSL certificates.  

No worries though.  If you run into this problem yourself, check out the [workaround].  You'll find manual update instructions in that solution that have worked for me.  Hopefully they will work for you as well!

Happy Hacking.

[RubyInstaller]: http://rubyinstaller.org/
[workaround]: https://gist.github.com/luislavena/f064211759ee0f806c88
[RubyGems]: https://rubygems.org/
