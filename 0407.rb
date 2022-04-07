# 問題
# エレベーターが一定の距離を動くと、定期点検をしなければなりません。
# エレベーターの動きのログをもとに、エレベーターが何階分の距離を動いたか計算するプログラムを完成させてください。
# ただし、エレベーターは最初は必ず 1 階にいるものとします。

# 入力例1
# 3
# 3
# 1
# 4

# 出力例1
# 7

# 私の回答
n = gets.to_i
a = readlines.map(&:to_i)
num = 1
sum = 0
for i in 0..(n-1)
    if i == 0
        num = (num - a[i]).abs
        sum += num
    else
        num = (a[i - 1] - a[i]).abs
        sum += num
    end
end
puts sum

# 他の回答
n = gets.to_i
a = readlines.map(&:to_i)
num = 1
sum = 0
a.each do |i|
  sum += (i - num).abs
  num = i
end
puts sum

# 感想
# 最初にエレベーターが1階にいることをどう表現しようかと思い、
# 当初の回答ではiが1の場合とそれ以外で分けてしまった。
# しかし、each文で処理した際に、毎回num =iとすることで解消されています。