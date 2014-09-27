---
layout: post
title: Pry And Vim, A Match Made In Heaven
category: posts
tags: pry vim
---

I love [Pry]. I'm learning to love [Vim].

Every once in a while I will be using [Pry] to test some code and I make a spelling mistake. By "every once in a while", I mean ever freakin day.

{% highlight ruby linenos=table %}
pry > puts "Helo Wurld"
{% endhighlight %}

At this point, assuming you have executed the line by pressing return, you have a few options:

* Hit the up arrow to recall your previous bad command.  Then use the arrow keys and delete/update the line as appropriate.
* Execute the 'edit' command
* Retype the whole line

Note: Don't retype the whole command, use edit!
 
{% highlight ruby linenos=table %}
pry > edit 
{% endhighlight %}

By default, [Pry] will launch [Nano] with your previous command prepopulated in the editor.  You can then edit and save the command.  Once you exit, the command will run in [Pry].  This becomes increadibily helpful for lengthy multiline statements and blocks of code.

Wouldn't it be nice if you could use the edit command with your favorite editor?  My current preference is [Vim](http://www.vim.org). There are 2 ways to make this a reality:

* update the $EDITOR environment variable
* update your pry config file (<span class="configfile">~/.pryrc</span>)

Updating the $EDITOR environment variable will impact more than just [Pry](http://pryrepl.org), so use it with caution.  In my case, I want to use [Vim](http://www.vim.org) wherever possible, so I have added the following line to my <span class="configfile">~/.bashrc</span> file.

{% highlight bash linenos=table %}
export EDITOR="vim"
{% endhighlight %}

If you only want to use [Vim] with [Pry] then you probably just want to update the the [Pry] config file. (Usually: <span class="configfile">~/.pryrc</span>)

{% highlight bash linenos=table %}
Pry.config.editor = "vim"
{% endhighlight %}

More details about updating the [Pry] configuration can be found [here](https://github.com/pry/pry/wiki/Editor-integration#Set_editor).

I hope this helps.

[Vim]: http://www.vim.org
[Pry]: http://pryrepl.org
[Nano]: http://www.nano-editor.org/
