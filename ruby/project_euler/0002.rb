#!/usr/bin/ruby

# 400万までの偶数項の和

# フィボナッチ数列を作る
# 1と2から始まり前項と前前項を足し合わせた数値を次にいれる

# 単純な解決
# 400万までの繰り返し処理でループ回数(インデックス指定用）とフィボナッチの項､数列をいれる配列を組み立てる

# fibonaccis = [1, 2]
# i = 0
# fibonacci = 0

# while fibonacci <= 4000000
#   fibonacci = fibonaccis[i] + fibonaccis[i + 1]
#   fibonaccis << fibonacci
#   i += 1
# end

# puts fibonaccis.select{|num| num % 2 == 0 }.sum

# ChatGPT版

require 'benchmark'

execution_time = Benchmark.realtime do
  # 計測したいコード
  # a, b = 1, 2
  # sum = 0
  # while b <= 4_000_000
  #   sum += b if b.even?
  #   a, b = b, a + b
  # end

  fibonaccis = [1, 2]
i = 0
fibonacci = 0

while fibonacci <= 4000000
  fibonacci = fibonaccis[i] + fibonaccis[i + 1]
  fibonaccis << fibonacci
  i += 1
end
end

puts "処理時間: #{execution_time} 秒"


# 配列を作らずに最終回答に必要な和を繰り返し処理の中で作成しており､無駄がない
# aとbだけでフィボナッチ数列の次の数値を作るための数値を保持して､最低限で回していっている