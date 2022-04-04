# 問題
# パイザ君の所属する会社では忘年会の余興で次のようなゲームを行います。まず、正整数 M が発表され、参加者は手元の紙に M 個、好きな数字を書きます。このとき、紙に書く数のそれぞれは 1 以上 M 以下であり、同じ数字を何度書いても構いません。その後、 1 以上 M 以下の数 K が発表され、各参加者は自分の紙に数字 K を書いた数だけポイントをもらい、ポイントの高い順に景品が配られます。

# 忘年会の参加者の人数 N と、数 M , K が与えられ、各参加者が書いた紙が与えられるので、それぞれの参加者の得点を計算して出力してください。

# 入力例1
# 3 2 1
# 2 2
# 1 2
# 1 1

# 出力例1
# 0
# 1
# 2

# 私の回答
a, b, c = gets.split(' ').map(&:to_i)
n = Array.new(a)
a.times { |i| n[i] = gets.split(' ').map(&:to_i) }

n.each do |i|
    count = 0
    i.each do |j|
        if j == c
            count+= 1
        end
    end
    puts count
end

# 解答例1
n, m, k = gets.split(' ').map(&:to_i)

a = Array.new(n)
n.times { |i| a[i] = gets.split(' ').map(&:to_i) }

a.each do |card|
  point = 0
  card.each do |num|
    point += 1 if num == k
  end
  puts point
end

# この問題を解く上でのポイントは以下の通りです。
# a, b, c = 長さ 3 の配列 のように書くと a, b, c に 長さ 3 の配列 の要素が先頭から順に代入される
# たとえば、a, b, c = [1, 2, 3] と書くと a に 1 が、b に 2 が、c に 3 がそれぞれ代入されます。
# 配列の長さは幾つでもよいですが、配列の長さと同じ数の変数を左辺に用意する必要があります。
# a.each do |card| の内側に card.each do |num| を書き、2 重ループにして 2 次元配列 a が格納している整数を取得する (この構造だと num に代入される)
# 2 重ループを用いて 2 次元配列の i 番目の配列が格納する整数、つまり、i 番目の人が紙に書いた m 個の整数をそれぞれ取得して 整数 == k であるか判定します。
# 整数 == k であるとき、ポイントを保持しておく変数 (解答コードだと point) の値を +1 します。

# 解答例2
n, m, k = gets.split(' ').map(&:to_i)

all_k = Array.new(n)
n.times { |i| all_k[i] = gets.split(' ').select { |num| num.to_i == k } }

all_k.each do |column|
  puts column.length
end

# 配列 all_k に i 番目の人が紙に書いた整数の内、k だけを格納します。
# こうすることで、all_k の i 番目の配列の長さが i 番目の人のポイントと一致します。