---
layout: post
title: Fizz Buzz - Ruby 
category: posts
tags: ruby fizzbuzz 
---

The last year of my life has been all about learning. I learned a lot at [The Iron Yard]. I continue to learn every day at the [new job], not to mention this blog and some private projects I'm working on.  More specifically, I've learned to write code in several different programming languages.  I wanted to sit down and review some of the things I've learned this year and compare and contrast how I might solve a common problem in several different languages. The problem I chose to solve is [Fizz Buzz], a classic new programmers problem. Its not a hard algorithm to write, but it is involved enough to exercise some simple core features of most languages. It is also an excellent problem to solve over an over again while you are working on [software craftmanship].

For the uninitiated, a [Fizz Buzz] program will count up from 1 to some number, say 25, and print one of the following for each number:

* 'Fizz', if the number is evenly divisable by 3
* 'Buzz', if the number is evenly divisable by 5
* 'FizzBuzz', if the number is evenly divisable by 3 and 5
* Or the number itself, if it is not evenly divisable by 3 or 5

Here is an example implementation in Ruby:

{% highlight ruby %}
1.upto(25) do |x|
  output = nil
  output = output.to_s + 'Fizz' if x % 3 == 0
  output = output.to_s + 'Buzz' if x % 5 == 0
  puts output || x
end
{% endhighlight %}


Stepping thru this code, we see the program does the following:

* Loops thru the numbers between 1 and 25
* Initializes the output object to nil, which is itself a [singleton] object
* Sets the nil output object to 'Fizz' if the current number is evenly divisible by 3
* Concats the output object with 'Buzz' if the current number is evenly divisible by 5
* Prints the value of output if it isn't null, or it prints the number

If you ran that code, you would see:

{% highlight bash %}
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
Fizz
22
23
Fizz
Buzz
{% endhighlight %} 

Pretty cool right? Its ok I guess. You know what would be really cool? I think it would be really cool to compare this solution against another language and see what we can learn from it. Stay tuned, I'm planning on doing just that.

Finally, review [other implementations in ruby]. We may discuss some in the future as we progress in our investigation.

I hope that helps.

[The Iron Yard]: http://theironyard.com
[new job]: {% post_url 2014-12-22-new_job_ionic_security %}
[Fizz Buzz]: http://en.wikipedia.org/wiki/Fizz_buzz
[software craftmanship]: http://en.wikipedia.org/wiki/Software_craftsmanship
[singleton]: http://en.wikipedia.org/wiki/Singleton_pattern
[other implementations in ruby]: http://rosettacode.org/wiki/FizzBuzz#Ruby
