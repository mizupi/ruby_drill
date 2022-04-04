# 問題
# 半角アルファベットのみで構成された長さmの文字列s_iがn行入力されます。
# 以下のような形式で
# Hello [s_1],[s_2],...[s_n].
# 「Hello」に文字列s_iを入力された順に「,」で結合したものを半角スペースで結合し、末尾に「.」を結合した文字列を出力するプログラムを作成してください。

# 入力例1
# 2
# Paiza
# Gino

# 出力例1
# Hello Paiza,Gino.

# 私の回答
n = gets.to_i
a = readlines.map(&:chomp)
puts "Hello #{a.join(',')}."

# 解説
# 配列要素をカンマ区切りで出力するために、joinメソッドを使います。

# 使用例
p ["apple", "orange", "lemon"].join(',') #=> "apple,orange,lemon"
p ["apple", "orange", "lemon"].join('#') #=> "apple#orange#lemon"
p [55, 49, 100, 100, 0].join(',') #=> "55,49,100,100,0"
p [3, ["apple", 250], ["orange", 400]].join(',') #=> "3,apple,250,orange,400" p ["apple", "orange", "lemon"].join(',') #=> "apple,orange,lemon"
p ["apple", "orange", "lemon"].join('#') #=> "apple#orange#lemon"
p [55, 49, 100, 100, 0].join(',') #=> "55,49,100,100,0"
p [3, ["apple", 250], ["orange", 400]].join(',') #=> "3,apple,250,orange,400"