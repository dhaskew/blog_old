#!/usr/bin/env ruby

hi = 1 
min = 2520
max = 300_000_000

while (min < max)
  hit = false
  remainder = false 
  if min.even?
    1.upto(20) { |m|
      hi = m if m > hi 
      puts "#{min} - #{m} - #{hi}"
      remainder = true if min%m != 0
      min += 20 if remainder 
      break if remainder
    } 
    hit = true if remainder == false
  end

   puts min if hit == true
   break if hit == true 
end
