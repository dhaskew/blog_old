---
layout: post
title: FizzBuzz - C
category: posts
tags: C fizzbuzz 
---

Continuing on from my [ruby example], I've implemented [Fizz Buzz] in C so we can compare the differences. Hopefully, by comparing the C version withe [ruby example] we'll level up a little on [software craftmanship].

Here is an example implementation in C:

{% highlight c %}
#include "stdio.h"

int main ()
{
    for(int i = 1; i<=25; i++)
    {
        if ((i%3 == 0) && (i%5 == 0)) printf("FizzBuzz");
        else if (i%3==0) printf("Fizz");
        else if (i%5==0) printf("Buzz");
        else printf("%d",i);
        printf("\n");
    }
    return (0);
}
{% endhighlight %}


Stepping thru this code, we see the program does the following:

* Includes a header file so we have access to the printf function
* Loops thru the numbers between 1 and 25
* Prints 'FizzBuzz' if the number is evenly divisable by 3 and 5
* Or, it prints 'Fizz' if the number is evenly divisable by 3, and not 5
* Or, it prints 'Buzz' if the number is evenly divisable by 5, and not 3
* Or, it just prints the number
* Regardless, it allways prints a newline via the '\n' character

Note: I'm working on OSX.

Now, lets take another look at our [ruby example]:

{% highlight ruby %}
1.upto(25) do |x|
  output = nil
  output = output.to_s + 'Fizz' if x % 3 == 0
  output = output.to_s + 'Buzz' if x % 5 == 0
  puts output || x
end
{% endhighlight %}

Now that we've seen them both, lets discuss some takeaways:

The ruby version doesn't require a build step.

The ruby version has many useful functions, such as 'upto'

The C version is faster:

PROOF GOES HERE

Remember, since Ruby is built in C, its [turtles all the way down].

Explain the trade offs more.





[Fizz Buzz]: http://en.wikipedia.org/wiki/Fizz_buzz
[software craftmanship]: http://en.wikipedia.org/wiki/Software_craftsmanship
[ruby example]: {% post_url 2015-02-26-fizzbuzz_in_ruby %}
[turtles all the way down]: http://en.wikipedia.org/wiki/Turtles_all_the_way_down

