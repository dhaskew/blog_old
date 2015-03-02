---
layout: post
title: Extended Attributes
category: posts
tags: shell
---

I’m currently [learning C the hard way] and I noticed something new there day while working in the terminal.  I started noticing files that have an [at-sign] when listing files in the shell.

Example:

{% highlight bash %}
$ ls -l ex10.c
-rw-r--r--@ 1 username  staff  494 Jan 28 15:47 ex10.c
{% endhighlight %}

It turns out that the [at-sign] on OS X (Yosemite+ ?) denotes that a file has additional metadata that you can view. If you want to review this metadata, then all you have to do is use the “xattr” command.

If you read the man page for “xattr” it tells you its purpose is to:

> “display and manipulate extended attributes"

Example:

{% highlight bash %}
$ xattr -l ex10.c
com.macromates.crc32: bf5ca3bb
com.macromates.selectionRange: 25:2
com.macromates.visibleIndex: 0
{% endhighlight %}

From the above command output, it appears as if this file was opened and saved via [Textmate].  I’m not sure what the values mean yet, but its something to investigate ….

I hope this helps!

[learning C the hard way]: http://c.learncodethehardway.org/book/
[at-sign]: http://en.wikipedia.org/wiki/At_sign
[Textmate]: https://github.com/textmate/textmate