#!/usr/bin/ruby

# 三桁の数値による乗算結果の回文の最大値を作る

max_num = 999
dec_num = 999

while dec_num > 0
  palindromic_number = max_num * dec_num
  length = palindromic_number.to_s.length
  half_length = length / 2

  front_palindromic_number = palindromic_number.to_s.slice(0..(half_length - 1))
  rear_palindromic_number = palindromic_number.to_s.slice(half_length..length).reverse

  binding.irb
  if front_palindromic_number == rear_palindromic_number
    puts palindromic_number
    break
  end

  dec_num -= 1
end