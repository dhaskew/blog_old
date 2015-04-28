---
layout: post
title: Fizzbuzz in R
category: posts
tags: R fizzbuzz
---

I never intended to demonstrate any R [Fizz Buzz] examples, but here we are.

[c example]

[ruby example]

[software craftsmanship]

[The Iron Yard]

[new job]

# vectorized method

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


# fizzbuzz with a loop

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

# indirect loop
{% highlight r %}
x <- 1:25
ifelse(x %% 15 == 0, 'FizzBuzz',
       ifelse(x %% 5 == 0, 'Buzz',
              ifelse(x %% 3 == 0, 'Fizz', x)))
{% endhighlight %}

output:

{% highlight rout %}
 [1] "1"        "2"        "Fizz"     "4"        "Buzz"     "Fizz"     "7"       
 [8] "8"        "Fizz"     "Buzz"     "11"       "Fizz"     "13"       "14"      
[15] "FizzBuzz" "16"       "17"       "Fizz"     "19"       "Buzz"     "Fizz"    
[22] "22"       "23"       "Fizz"     "Buzz"  
{% endhighlight %}

# fancier version
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

# expanded for fizz buzz bang
{% highlight r %}
sapply(1:25,function(x) fizzbuzz(x, c(3,5,7), c("Fizz","Buzz","Bang")))
{% endhighlight %}

output:

{% highlight rout %}
> sapply(1:25,function(x) fizzbuzz(x, c(3,5,7), c("Fizz","Buzz","Bang")))
 [1] "1"        "2"        "Fizz"     "4"        "Buzz"     "Fizz"     "Bang"    
 [8] "8"        "Fizz"     "Buzz"     "11"       "Fizz"     "13"       "Bang"    
[15] "FizzBuzz" "16"       "17"       "Fizz"     "19"       "Buzz"     "FizzBang"
[22] "22"       "23"       "Fizz"     "Buzz"  
{% endhighlight %}





[Fizz Buzz]: http://en.wikipedia.org/wiki/Fizz_buzz
[software craftsmanship]: http://en.wikipedia.org/wiki/Software_craftsmanship
[ruby example]: {% post_url 2015-02-26-fizzbuzz_in_ruby %}
[c example]: {% post_url 2015-04-01-fizzbuzz_in_c %}
[The Iron Yard]: http://theironyard.com
[new job]: {% post_url 2014-12-22-new_job_ionic_security %}

