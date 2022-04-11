# 問題
# 0 ~ 9 の数字が 4 つ並んだ文字列 S が与えられます。
# 左から 1 番目の数と 4 番目の数を足し合わせたものを a とし、 2 番目の数と 3 番目の数を足し合わせたものを b とします。

# 文字列としての a の末尾に文字列としての b を結合したものを出力してください。

# 入力例1
# 2134

# 出力例1
# 64

# 私の回答
a, b, c, d = gets.split('').map(&:to_i)
num1 = a + d
num2 = b + c
puts "#{num1}#{num2}"

# 解答例
s = gets

a = s[0].to_i + s[3].to_i
b = s[1].to_i + s[2].to_i

puts a.to_s + b.to_s

# 解説
# この問題を解く際のポイントは以下 3 つです
# 文字列[i] で 文字列 のインデックス i の文字を取得できる
# 文字列.to_i で 文字列 を整数に変換できる
# 整数.to_s で 整数 を文字列に変換できる
# 以下のことに注意して下さい。
# 文字列のインデックスは 0 から始まる
# 整数 + 整数 のように + 演算子を使うと足し算をする
# 文字列 + 文字列 のように + 演算子を使うと文字列の結合を行う
# 以上のことに注意して問題文の指示に従うことで解くことができます。