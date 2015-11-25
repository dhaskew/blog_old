#!/usr/bin/env ruby
step = 2520

def DivByAll(num)
  check_list = [20, 19, 18, 17, 16, 14, 13, 11 ]
  check_list.each do |n|
   if num%n != 0
    return false 
   end
  end 
  return true
end

while(step < 999_000_000)
  puts step 
  if DivByAll(step)
    puts step 
    exit
  end
  step += 2520 
end

