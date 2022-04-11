# 問題
# paiza 市に住んでいるあなたは、普段の移動手段は全て paiza バスを使います。paiza バスでは paica という IC カードを乗車券として使うことができます。事前に paica にチャージをすることで利用できます。

# バスの運賃支払に paica のカード残額を使うと、運賃の 10 % が paica ポイントとしてたまります。
# バスを降車する時に、支払う運賃以上のポイントがある場合は、ポイントが優先的に運賃の支払いに使われます。ただし、1 ポイントは 1 円になります。ただし、ポイントで運賃を支払った場合、新たなポイントは発生しません。

# あなたは、カード残金とポイントをどれくらい使ったか知るためのプログラムを書くことにしました。
# あなたには、最初にチャージする現金と、バスを利用した時にかかった料金のリストが与えられるので、毎回の降車時に残っているお金とポイントを出力してください。
# ただし、途中でカード残高とポイントの両方が運賃を下回ることはありません。

# 入力例1
# 2000 5
# 300
# 500
# 300
# 100
# 100

# 出力例1
# 1700 30
# 1200 80
# 900 110
# 900 10
# 800 20

# 私の回答
a, n = gets.split(' ').map(&:to_i)
b = readlines.map(&:to_i)
p = 0

b.each do |i|
    if p > i
        p -= i
    else
        a -= i
        p += i * 0.1
    end
    puts "#{a} #{p.to_i}"
end