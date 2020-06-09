# 変数nの値が0でなければ
# ‘0ではありません’と出力するプログラムをunlessを使って記述してみましょう。

n = 1
if !n.zero?
  puts 'if文だと分かりづらい　0ではありません'
end

unless n.zero?
  puts 'unless 0ではありません'
end