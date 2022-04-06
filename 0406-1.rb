# 問題
# 整数 n が与えられるので、n 回、半角スペース区切りで paiza と出力してください。

# 入力例1
# 2

# 出力例1
# paiza paiza

# 私の回答
n = gets.to_i
a = "paiza"
ary =[]
n.times do
    ary << a
end
puts ary.join(' ')

# 解答例1
n = gets.to_i

ans = 'paiza'
(n - 1).times { ans += ' paiza' }

puts ans

# 文字列の結合を使って、paiza が半角スペース区切りで n 回繰り返されている文字列を作ります。
# まず ans = 'paiza' で ans を初期値 'paiza' で用意します。
# その後、ans += ' paiza' を n-1 回繰り返す繰り返し処理を書けばよいです。
# 上記から分かるように Ruby では文字列の連結を + 演算子を使って行うことができます。

# 解答例2
n = gets.to_i

arr = Array.new(n)
n.times { |i| arr[i] = 'paiza' }

puts arr.join(' ')

# Array クラスの join メソッドを使う方法です。
# join メソッドは arr.join(' ') のように使います。この場合の返り値は arr の要素間に ' ' を挟んだ文字列です。