# 問題
# パイザ君の家の前では毎週日曜日に工事が行われます。この先 N 週間、工事が日曜日の何時に始まり、どれくらいの時間続くのかは分かっています。パイザ君は工事の間は家を離れようと思っているので、それぞれの日に工事が何時に終わるのかを知りたいと思いました。

# 工事が N 週間続くとして、各週日曜日の工事が始まる時刻と、工事が何時間何分続くのかに関する情報が与えられるので、工事が終わる時刻を 00:00 から 23:59 までの 24 時間表記で出力してください（ここで「工事が終わる時刻」とは、工事が h 時間 m 分続くとした場合、工事が始まった時刻の h 時間 m 分後を指します）。

# 入力例1
# 1
# 13:00 1 30

# 出力例1
# 14:30

# 模範回答
n = gets.to_i

n.times do
  t, c_h, c_m = gets.split(' ')
  h, m = t.split(':').map(&:to_i)
  c_h = c_h.to_i
  c_m = c_m.to_i

  m += c_m
  h += c_h
  if m > 59
    m -= 60
    h += 1
  end
  h -= 24 if h > 23

  m = m.to_s
  h = h.to_s
  m = '0' + m if m.length == 1
  h = '0' + h if h.length == 1

  puts h + ':' + m
end

# 解説
# まず、解答コードで使っている変数名をまとめます
# t : 入力で与えられる t_i
# c_h : 入力で与えられる h_i
# c_m : 入力で与えられる m_i
# h : t の「時」の部分
# m : t の「分」の部分
# この問題を解く上でのポイントは以下の通りです。
# a, b, c = 長さ 3 の配列 のように書くと a, b, c に 長さ 3 の配列 の要素が先頭から順に代入される
# たとえば、a, b, c= [1, 2, 3] と書くと a に 1 が、b に 2 が、c に 3 がそれぞれ代入されます。
# 配列の長さは幾つでもよいですが、配列の長さと同じ数の変数を左辺に用意する必要があります。
# 文字列.split(':') で 文字列 を ':' で区切った配列を生成することができる
# m > 59 のとき、「時」を 1 時間進めて、「分」を 1 時間分戻す
# 具体的には以下の 2 つの処理を実行する
# m -= 60
# h += 1
# 問題文から日付を跨ぐ可能性が考えられるので、h > 23 のとき h の値を調整する
# 具体的には h -= 24 を実行する
# h の長さが 1 であるとき、h の先頭に 0 を付ける
# m の長さが 1 であるとき、m の先頭に 0 を付ける
# 注意点として以下のことが挙げられます。
# m > 59 と m > 23 の操作はこの順番に行う必要がある
# m > 59 の操作で h > 23 になる可能性があるため
# 型変換を適切に行う
# 【 型変換 】
# 【 文字列 -> 数値 】 : 文字列.to_i
# 【 整数 -> 文字列 】 : 整数.to_s