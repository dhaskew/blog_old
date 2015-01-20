---
layout: post
title: Learning to love h, j, k and l in VIM
category: posts
tags: vim
---
As a new VIM user, I've learned to [tweak my configuration] as well as integrate with my other favorite apps like [Pry].  The next thing I'm trying to master is moving arround efficiently while editing documents.  Its really temping to want to use the arrow keys instead of the home row ( h, j, k and l ) to move around. Don't do that!  It may seem to work fine now, but your efficiency will suffer long term once you finally get the hang of more complex motions/key combos.

I had a hard time making this switch, so I decided to disable the arrow keys entirely, forcing me to learn to use VIM the correct way. 

For similar results, you can add this to your <span class="configfile">~/.vimrc</span>:

{% highlight bash %}
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
{% endhighlight %}

[Practical Vim]: https://pragprog.com/book/dnvim/practical-vim
[tweak my configuration]: {% post_url 2014-11-25-vimrc_tip_to_edit_vimrc %}
[Pry]: {% post_url 2014-09-28-pry_and_vim %}
