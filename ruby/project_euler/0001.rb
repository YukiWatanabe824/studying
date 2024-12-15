#!/usr/bin/ruby

# 1000以下の3または5の倍数の和

ary = []
i = 1

while i < 1000
  i += 1
  next if (i % 3) != 0 && (i % 5) != 0
  break if i == 1000

  ary << i
end
answer = ary.sum

puts answer

