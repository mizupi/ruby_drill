# 問題
# 正整数 n と n 個の整数 a_1, ..., a_n が改行区切りで与えられるので、各 a_i (1 ≤ i ≤ n) が 7 であるか判定し、 a_1, ..., a_n の中に 7 がひとつでも含まれていた場合には "YES" を、そうでない場合（7 がひとつも含まれていなかった場合）には "NO" を出力してください。

# 入力例1
# 2
# 7
# 1

# 出力例1
# YES

# 私の回答
line = readlines.map(&:to_i)
if line.include?(7)
    puts "YES"
else
    puts "NO"
end

# 模範回答
n = gets.to_i
a = Array.new(n)
n.times { |i| a[i] = gets.to_i }

exist = false
a.each do |num|
  if num == 7
    exist = true
    break
  end
end

if exist
  puts 'YES'
else
  puts 'NO'
end

# 模範回答解説
# この問題を解く上でのポイントは以下の通りです。
# 7 が見つかったかどうか示す真偽値 (true, false) を格納する変数を用意する(解答コードでは exist)
# exist を初期値 false で準備します。
# a.each |num| 内で num == 7 のとき、exist を true にします。
# 最後に exist が true のとき 'YES' を、false のとき 'NO' を出力します。