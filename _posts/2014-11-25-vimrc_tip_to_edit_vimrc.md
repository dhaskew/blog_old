---
layout: post
title: Keyboard Foo - VIM Edition 
category: posts
tags: vim
---
As a new vim user, I'm constantly openning up my <span class="configfile">~/.vimrc</span> file to tweak one thing or another.

There really isn't a lot of keystrokes necessary to it the manual way:

{% highlight bash %}
:e ~/.vimrc
{% endhighlight %}

I don't care how short the normal way is.  It could be easier.  I'd prefer to be able to type the following key combo in normal mode:

{% keyboard_shortcut , v %}

Here's what you put in your configuration to make that happen, assuming your "leader" key is set to ",":

{% highlight bash %}
nmap <leader>v :tabedit $MYVIMRC<CR>
{% endhighlight %}

If you want your current VIM session to update automatically with the changes you just made via the new shortcut, then add the following:

{% highlight bash %}
if has("autocmd")
   autocmd bufwritepost .vimrc source $MYVIMRC
endif
{% endhighlight %}

Anytime you save your <span class="configfile">~/.vimrc</span> file, it will now update your current config.

If you don't want to do it the magical way, then you need to remember to execute the following command when you save your config:

{% highlight bash %}
:source $MYVIMRC
{% endhighlight %}

I hope this helps!
