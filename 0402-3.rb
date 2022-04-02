# 問題
# 1 から n まで番号が付けられた人々がいます。 i 番目の人の財産は a_i 円です。金額 k が与えられるので（k は a_1, ..., a_n のいずれか）、財産が k 円である人の番号を出力してください。ただし、そのような人が複数いる場合には、そうした人々の中で最も小さい番号を出力してください。

# 入力例1
# 2
# 5
# 6
# 6

# 出力例1
# 2

# 私の回答
length = gets.to_i
money = readlines.map(:&:to_i)
k = money[length - 1]

length.times do |i|
    if money[i] == k
        puts i + 1
        break
    end
end

# 模範回答
n = gets.to_i

a = Array.new(n)
n.times { |i| a[i] = gets.to_i }

k = gets.to_i

n.times do |i|
  if a[i] == k
    puts i + 1
    break
  end
end

# 模範回答の解説
# この問題を解く上でのポイントは以下の通りです。
# K と一致する要素が見つかったとき、i+1 を出力して break する
# times メソッドを用いて i=0 から i=n-1 まで a[i] == k を判定します。
# a[i] == k のとき、i+1 を出力して break します。
# break を忘れると一番小さい番号以外の番号を出力してしまう危険があります。
# i+1 を出力するのは配列のインデックスが 0 番から始まるからです。