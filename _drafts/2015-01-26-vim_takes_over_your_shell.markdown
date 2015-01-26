---
layout: post
title: Vim Takeover - Bash Edition
category: posts
tags: vim 
---

I've try to share stuff that helps me.  The more I learn about [Vim], the more I want to share with you here. Whether it was learning to use the [home row keys] or being able to [edit vimrc easily], I've tried to share the things that have really paid dividends for my personal productivity.  

One of the keys to learning [Vim] and using it effectively is to build up muscle memory for the common actions.  At first, it might seem that your only way to accomplish this task is to just use [Vim] a lot.  That'll work of course, but wouldn't it be great if you could get better at using [Vim] even when you aren't using it?

As luck would have it, the [Bash] shell has a "vi" mode.  Luckily, [Vim] is basically vi at its core and since we've spent time learning to use the [home row keys] effectively we're well on our way to leveling up our keyboard skills.


{% highlight bash %}
set -o vi
{% endhighlight %}

Add the above to your ".bashrc", restart your shell, and experiment with all the new [Vim] style shortcuts you can now use.

You're welcome.


[home row keys]: http://localhost:4000/posts/vim_home_row_keys.html
[edit vimrc easily]: http://localhost:4000/posts/vimrc_tip_to_edit_vimrc.html
[Vim]: http://www.vim.org
[Bash]: http://www.gnu.org/software/bash/


