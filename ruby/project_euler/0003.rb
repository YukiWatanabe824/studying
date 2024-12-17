#!/usr/bin/ruby

require 'prime'

# 素因数分解する

target = 600851475143
#prime_ary = []

#Prime.each(target) do |prime|
  #prime_ary << prime if target % prime == 0

  #break if prime == target
#end

print Prime.prime_division(target)
