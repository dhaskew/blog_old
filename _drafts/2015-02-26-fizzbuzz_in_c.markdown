---
layout: post
title: FizzBuzz - C
category: posts
tags: C fizzbuzz 
---


Here is an example implementation in C:

{% highlight c %}
#include "stdio.h"

int main ()
{
    for(int i = 1; i<=25; i++)
    {
        if (i%3==0) printf("Fizz");
        if (i%5==0) printf("Buzz");
        if (i%3  i%5) printf("%d", i);
        printf("\n");
    }
    return (0);
}
{% endhighlight %}


Stepping thru this code, we see the program does the following:

* Includes a header file .. (why?)
* Loops thru the numbers between 1 and 25
* 

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

Pretty cool right? Its ok I guess. You know what whould be really cool? I think it would be really cool to compare this solution against another language and see what we can learn from it. Stay tuned, I'm planning on doing just that.

I hope that helps.

[Fizz Buzz]: http://en.wikipedia.org/wiki/Fizz_buzz
[software craftmanship]: http://en.wikipedia.org/wiki/Software_craftsmanship


