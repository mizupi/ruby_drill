# 問題
# ひな祭りの準備をしましょう。あなたが持っている 10 体の人形を "A", "B", "C", "D", "E", "F", "G", "H", "I", "J" で表します。ひな壇の各段 (計 3 段) に並べる人形の数が与えられるので、各段にならべる人形の記号を改行区切りで出力してください。人形は必ずもとの A, B, C, ... の順番で並べます。

# 入力例1
# 2 3 5

# 出力例1
# AB
# CDE
# FGHIJ

# 私の回答
n, m, p = gets.split(' ').map(&:to_i)
doll = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
i = 0
ary1 = ''
ary2 = ''
ary3 = ''
n.times do
    ary1 +=doll[i]
    i += 1
end
m.times do
    ary2 +=doll[i]
    i += 1
end
p.times do
    ary3 +=doll[i]
    i += 1
end

puts ary1
puts ary2
puts ary3

他の回答
ns = gets.split.map(&:to_i)
str = "ABCDEFGHIJ"
i = 0
ns.each do |n|
  puts str[i, n]
  i += n
end

# 解説
# 他の回答は、問題を解いた後に見つけた回答です。
# そうか、普通に文字列で取得すればよかったんだ笑
# 配列問題とかやってたせいで、勝手に配列にしなきゃいけないとか思ってました。
# each文と、文字列[nth, len]で取得しています。