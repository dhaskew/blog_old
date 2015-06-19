---
layout: post
title: FizzBuzz - C#
category: posts
tags: fizzbuzz
---

We’ve reviewed a [Ruby example].  We’ve also seen a [C example] and an [R example].  Life wouldn’t be complete without a C# example now would it?

# Simple Version

{% highlight c# %}
public static void FizzBuzz(int iCount)
{
    for (int i = 1; i <= iCount; i++)
    {
        bool fizz = i % 3 == 0;
        bool buzz = i % 5 == 0;
        if (fizz && buzz) 
        {
            Console.WriteLine ("FizzBuzz");
        }
        else if (fizz) 
        {
            Console.WriteLine ("Fizz");
        } 
        else if (buzz) 
        {
            Console.WriteLine ("Buzz");
        } 
        else 
        {
            Console.WriteLine (i);
        }
    }
}
{% endhighlight %}

If you’ve reviewed some of the other examples then the structure of this should look very familiar.  The same basic for loop structure is used.  This is boring. We can do better can’t we?

# Fancy Version

{% highlight c# %}
foreach (int num in Enumerable.Range(1, 25))
{
    string output = null;
    if (num % 3 == 0) { output = output + "Fizz"; }
    if (num % 5 == 0) { output = output + "Buzz"; }

    output = (output == null) ? num.ToString() : output;
    Console.WriteLine(output);
}       
{% endhighlight %}

Notes:

* An Enumerable.Range is used to create a sequence of integers between 1 and 25 that we iterate over
* The [ternary operator] “?” and “:” are use to write a one line conditional
* This example is similar to the [Ruby example] (upto example) in a lot of ways and looks very familiar. One of the key differences is how types/variables are declared and used.
     * Ruby is strongly and dynamically typed
     * C# is strongly and statically typed, although it does allow some dynamic typing via [anonymous types]


# Even Fancier Version

{% highlight c# %}
Enumerable.Range(1, 25).ToList().ForEach( item =>
{
    string output = null;
    if (item % 3 == 0) { output = output + "Fizz"; }
    if (item % 5 == 0) { output = output + "Buzz"; }

    output = (output == null) ? item.ToString() : output;
    Console.WriteLine(output);
});
{% endhighlight %}

Notes:

* The main difference here is the [lambda expression].
* Ruby lambdas feel more natural, but C# lambdas are equally useful if more wordy.

I hope you learned something.  I am, everyday.

[lambda expression]: http://www.dotnetperls.com/lambda
[strongly and dynamically typed]: http://www.rubyfleebie.com/ruby-is-dynamically-and-strongly-typed/
[anonymous types]: https://msdn.microsoft.com/en-us/library/bb397696.aspx
[Ruby example]: {% post_url 2015-02-26-fizzbuzz_in_ruby %}
[C example]: {% post_url 2015-04-01-fizzbuzz_in_c %}
[R example]: {% post_url 2015-05-04-fizzbuzz_in_R %}
[ternary operator]: https://en.wikipedia.org/wiki/%3F:
