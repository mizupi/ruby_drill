# 問題
# m 個の文字 c_1, ..., c_m と、 n 個の文字列 S_1, ..., S_n が与えられます。各 c_i （1 ≤ i ≤ m） について、各 S_j （1 ≤ j ≤ n） に c_i が出現するかをそれぞれ調べ、出現する場合は "YES" を、そうでない場合には "NO" を、そのつど出力してください。

# 入力例1
# 1
# a
# 2
# paiza
# kyoko

# 出力例1
# YES
# NO

# 私の回答
a = gets.to_i
str1 = Array.new(a)
a.times { |i| str1[i] = gets.chomp }
b = gets.to_i
str2 = Array.new(b)
b.times { |i| str2[i] = gets.chomp }

str2.each do |n|
    str1.each do |m|
        if n.include?(m)
            puts "YES"
        else
            puts "NO"
        end
    end
end

# 模範回答
m = gets.to_i

c = Array.new(m)
m.times { |i| c[i] = gets.chomp }

n = gets.to_i

s = Array.new(n)
n.times { |i| s[i] = gets.chomp }

c.each do |d|
  s.each do |t|
    if t.include? d
      puts 'YES'
    else
      puts 'NO'
    end
  end
end

# 模範回答の解説
# この問題を解く上でのポイントは以下の通りです。
# ・文字列.include? 探したい文字列 で 探したい文字列 が 文字列 の部分文字列であるかを判定することができる
# ・c.each do |d| の内側に s.each do |t| を書き、2 重ループ内で 'YES' か 'NO' を出力する
# ・chomp メソッドを使う
# chomp メソッドで文字列末尾の改行文字を削除しない場合、c_i\n が配列 c の要素となるので、上手くいきません。
# s_i に chomp メソッドを使う必要は必ずしもありません。
# c_i が s_1 から s_n のそれぞれに含まれるかを出力するので、外側のループが c.each do |d| に、内側のループが s.each do |t| になります。

# 感想
# str1の文字がstr2に含まれているか確認するべきなので、str1を外側のループ、str2を内側のループにしなければいけないところを、逆にしてしまっていたようです。
