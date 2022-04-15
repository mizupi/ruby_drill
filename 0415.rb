# 問題
# あなたは PAIZA 大学の講義を受講した学生の評価をしています。
# 学生の成績はテストの点数から 欠席回数 × 5 点 を引いた点数とすることにしました。
# 成績がマイナスとなった場合は 0 とします。

# 学生のテストと欠席回数のデータが学籍番号順に与えられたとき、成績が合格点以上になっている学生の学籍番号を順に出力するプログラムを作成してください。
# 学籍番号は 1 から順に与えられます。

# 入力例1
# 5 25
# 80 11
# 20 1
# 50 2
# 70 0
# 25 1

# 出力例1
# 1
# 3
# 4

# 私の回答
n, score = gets.split(' ').map(&:to_i)
a = Array.new(n)
n.times { |i| a[i] = gets.split(' ').map(&:to_i) }
count = 1
a.each do |k, v|
    if k - v * 5 >= score || score == 0 
        puts count
    end
    count += 1
end