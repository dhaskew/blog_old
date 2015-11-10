#!/usr/bin/env ruby
require 'prime'

class PrimeFactors

  def initialize 
    @factors = Array.new 
    @computed = false 
  end
  
  def find_prime_factors(num_to_factor)
    n2f = num_to_factor 
    p = Prime::EratosthenesGenerator.new
    until n2f == 1 
      np = p.next
      @factors << np if n2f % np == 0
      n2f = n2f / np if n2f % np == 0
    end

    @computed = true
    @factors 
  end

  def find_max_factor(num_to_factor)
    return @factors.max if @computed
    return find_prime_factors(num_to_factor).max 
  end

end

factor_me = 600_851_475_143

pf = PrimeFactors.new

puts pf.find_max_factor(factor_me)
