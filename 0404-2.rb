# 問題
# ある 2 以上の整数 n が与えられます。
# 1から n までの 1 ずつ増加する数列の和を出力してください。

# 入力例1
# 10
# 出力例1
# 55

# 私の回答
n = gets.to_i
sum = 0
num = 1
while num <= n
    sum += num
    num += 1
end
puts sum