---
layout: post
title: Fizz Buzz in R
category: posts
tags: R fizzbuzz
---

I never intended to demonstrate any R [Fizz Buzz] examples, but here we are. In the past I've shown a [c example] and a [ruby example].  While I don't yet have an expert grasp of R, I thought I would show some examples of [Fizz Buzz] anyway in the name of [software craftsmanship].

As with any sufficiently mature language, R has many different ways of doing things.  Here are a few of them ...

# Method 1 - Simple Vectors

{% highlight r %}
x <- 1:25
y <- 1:25
x[ y %% 3 == 0] <- "Fizz"
x[ y %% 5 == 0] <- "Buzz"
x[ y %% 15 == 0] <- "FizzBuzz"
print(x)
{% endhighlight %}

output:

{% highlight rout %}
> ...
> print(x)
 [1] "1"        "2"        "Fizz"     "4"        "Buzz"     "Fizz"     "7"       
 [8] "8"        "Fizz"     "Buzz"     "11"       "Fizz"     "13"       "14"      
[15] "FizzBuzz" "16"       "17"       "Fizz"     "19"       "Buzz"     "Fizz"    
[22] "22"       "23"       "Fizz"     "Buzz"    
{% endhighlight %}

Notes:

* First we build a pair of R vectors, prepopulated with a sequence of integers from 1 to 25.  We probabably could have gotten away without creating only one of them.
* We set every value of x to "Fizz" whose corresponding value of y is equally divisable by 3
* We apply similar logic to "Buzz" and "FizzBuzz".
* Lastly, we print the vector.

 

# Method 2 - Simple Loop 

{% highlight r %}
for (i in 1:25){
  if ( (i%%3==0) & (i%%5==0) ) { print("FizzBuzz") }
  else if (i%%3==0) { print("Fizz") }
  else if (i%%5==0) { print("Buzz") }
  else { print(i) }
}
{% endhighlight %}

output:

{% highlight rout %}
[1] 1
[1] 2
[1] "Fizz"
[1] 4
[1] "Buzz"
[1] "Fizz"
[1] 7
[1] 8
[1] "Fizz"
[1] "Buzz"
[1] 11
[1] "Fizz"
[1] 13
[1] 14
[1] "FizzBuzz"
[1] 16
[1] 17
[1] "Fizz"
[1] 19
[1] "Buzz"
[1] "Fizz"
[1] 22
[1] 23
[1] "Fizz"
[1] "Buzz"
{% endhighlight %}

Notes:

* This example is a classic for loop example with some conditionals.
* It still uses a vector to manage a sequence, but it is implicit and not explicit 
* The printed output looks a little different between method 1 and method 2 because in the first instance we are printing out a single vector at the end of the operations. In the second instance we are printing out each single character vector element of a larger vector.
* This version probably isn't as [idiomatic] as the first version.

# Method 3 - Fancy Version 
{% highlight r %}
fizzbuzz = function(i, multiples = c(3,5), text = c("Fizz", "Buzz")) {
  words = text[i %% multiples == 0]
  if (length(words) == 0)
    as.character(i)
  else
    paste(words, collapse = "")
}

sapply(1:25,function(x) fizzbuzz(x))
{% endhighlight %}

output:

{% highlight rout %}
> ...
> sapply(1:25,function(x) fizzbuzz(x))
 [1] "1"        "2"        "Fizz"     "4"        "Buzz"     "Fizz"     "7"       
 [8] "8"        "Fizz"     "Buzz"     "11"       "Fizz"     "13"       "14"      
[15] "FizzBuzz" "16"       "17"       "Fizz"     "19"       "Buzz"     "Fizz"    
[22] "22"       "23"       "Fizz"     "Buzz"    
{% endhighlight %}

Notes:

* This version shows a lot of [idiomatic] R code.
* We create a function to be called with a vector of numbers as the first and only required arguement (i).
* We call the function via another function: sapply
* The printed output tells us that the return value from the function is a single vector.  
* I have some things to learn about R before my explanation may be complete ...


# Conclusion 

Anyway, hopefully this helps you in some way.  I never intended to learn R, but I stumbled across some code on the internet that made me think ... so I thought I would share some of those ideas here.

[Fizz Buzz]: http://en.wikipedia.org/wiki/Fizz_buzz
[software craftsmanship]: http://en.wikipedia.org/wiki/Software_craftsmanship
[ruby example]: {% post_url 2015-02-26-fizzbuzz_in_ruby %}
[c example]: {% post_url 2015-04-01-fizzbuzz_in_c %}
[The Iron Yard]: http://theironyard.com
[new job]: {% post_url 2014-12-22-new_job_ionic_security %}
[idiomatic]: http://www.merriam-webster.com/dictionary/idiomatic

