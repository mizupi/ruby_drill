# 問題
# n 人の人に関して、それぞれの人の名前と財産が与えられます。その後に人名 S が与えられるので （S は最初に与えられた名前のうちのいずれか） 、 S の財産を表す整数を出力してください。

# 入力例1
# 2
# Kirishima 1
# Kyoko 2
# Kirishima

# 出力例1
# 1

# 私の回答
n = gets.to_i
a = Array.new(n)
n.times { |i| a[i] = gets.split(' ').map(&:chomp) }
s = gets.chomp

a.each do |i|
    if i[0] == s
        puts i[1]
    end
end

解答例
n = gets.to_i

properties = {}
n.times do
  s, a = gets.split(' ')
  properties[s] = a.to_i
end

s = gets
puts properties[s]

解説
この問題を解く上でのポイントは以下の通りです。
Hash を使う
Hash は他の言語でいうところの Map や dict などと同様の特徴を持ちます。
Hash については Ruby の解説の一番下で少し詳しく説明します。
ハッシュ への登録が済んだら、あとは ハッシュ[S] で S をキーに持つ値を取得できるので、 puts ハッシュ[S] で出力すれば解けます。
【 Hash について 】
Hash の特徴、登録、取得、の 3 つについて簡単に説明します。
【 特徴 】
キーと値を関連付けて管理するデータ型です。
キーを用いて値にアクセスするので、キーの重複は許されません。
【 登録 】
ハッシュ[キー] = 値 とすることで、ハッシュ に キー と 値 の関連付けができます。
Hash は登録順を保持します。
【 取得 】
ハッシュ[キー] とすることで、ハッシュ の中で キー に関連付けされている 値 を取得できます。