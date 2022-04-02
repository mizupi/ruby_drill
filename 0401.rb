# 問題
# 正整数 n と、 n 個の整数 a_1, ..., a_n が半角スペース区切りで与えられます。
# 与えられた整数の中に 3 の倍数がいくつあるかを数え、出力してください。

# 私の回答
lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

n = lines[0]
ary = lines[1]
sum = 0
ary.each do |i|
    if i % 3 == 0
        sum += 1
    end
end
 puts sum


# 模範回答
n = gets.to_i
a = gets.split(' ').map(&:to_i)

count = 0
a.each do |num|
  count += 1 if num % 3 == 0
end

puts count

# 模範回答解説
# この問題を解く上でのポイントは以下の通りです。
# 整数 % 3 == 0 で 整数 が 3 で割り切れるか判定できる
# 「3 で割り切れる」整数は「3 の倍数」なので、これを if 文で配列の各要素について判定します。
# 解を保存しておく変数 (解答コードでは count) を用意して、要素が 3 の倍数であったとき、count += 1 を実行します。

# 別解
n = gets.to_i
a = gets.split(' ').select { |n| n.to_i % 3 == 0 }

puts a.length

# 感想
# 標準入力のインにたいしてどのようにアウトすればいいかいまだに戸惑ってしまう
# この模範回答の方法について整理しておかなければ