---
layout: post
title: Git Commit Hooks 
category: posts
tags: git
---

I love [Git]. It makes the process of writing software so much easier.  One of my favorite features of [Git] is [Git hooks].  What is a Git hook?  Basically it is a way to fire of a script after a particular action happens.

Why would you want that?

Good question.  Here's a concrete example. 

As I've said in [older posts], I love [Pry]. If you have ever used [Pry] then you know that it is real easy to leave troubleshooting code where it doesn't belong.  Code such as:

{% highlight ruby linenos=table %}
binding.pry
{% endhighlight %}

It can be really frustrating if you are running code during testing and accidentaly hit a binding.pry you where not expecting.  It's even worse if you check out a new [Git] repository that has a binding.pry in it.

Wouldn't it be great if you could prevent code like this from ever getting committed to the repository in the first place?  Of course it would.  That's where [Git hooks] come in.

Below is an example of pre-commit hook.  It executes everytime you issue a commit via [Git].  It rejects/aborts the commit if it sees a forbidden phrase in the code to be commited.

{% highlight ruby linenos=table %}
#!/usr/bin/env ruby

# Checks staged files for disallowed additions

class PreCommitHandler

  def handle
    %w{ :focus binding.pry save_and_open_page }.each do |forbidden|
      cmd  = "git diff --cached -G'#{forbidden}'"
      diff = `#{cmd}`
      unless diff.empty?
        puts "REJECTING COMMIT ==== #{forbidden} ===="
        puts diff
        exit 1
      end
    end
  end

end

PreCommitHandler.new.handle
{% endhighlight %}

If you where to execute a commit with a forbidden phrase in it you would get a message similar to the one in the screenshot below.

![Rejected Commit]({{site.baseurl}}/images/commit_rejected.jpg "Rejected Commit")

As you can(?) tell from the screenshot above, I am actually tring to commit the commit-hook itself into git. It's a little [meta], I know. In this case, It is actually quite appropriate to check in the code this way. So that begs the question ...

What if I want to overide [Git hooks]? 

Answer: Use the "-n" or "--no-verify" option.

See the [Git hooks] site to learn more about installing and using them. Additionally, check out the following [stack overflow post] to learn more about git templates and how you might utilize both of these things to bootstrap your projects faster. 

I hope this helps.

[stack overflow post]: http://stackoverflow.com/questions/16363460/set-up-a-default-directory-structure-on-git-init
[meta]: http://en.wikipedia.org/wiki/Meta
[Git]: http://git-scm.com/
[Git hooks]: http://githooks.com
[Pry]: http://pryrepl.org
[older posts]: {% post_url 2014-09-28-pry_and_vim %}


