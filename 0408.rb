# 問題
# Leet と呼ばれるインターネットスラングがあります。
# Leet ではいくつかのアルファベットをよく似た形の他の文字に置き換えて表記します。 Leet の置き換え規則はたくさんありますが、ここでは次の置き換え規則のみを考えましょう。
# 置き換え前	置き換え後
# A	4
# E	3
# G	6
# I	1
# O	0
# S	5
# Z	2
# 文字列が入力されるので、これを Leet に変換して出力するプログラムを書いてください。

# 入力例1
# PAIZA

# 出力例1
# P4124

# 私の回答
str = gets.chomp
puts str.tr('AEGIOSZ', '4361052')

# 他の回答調べてみた
str= gets.chomp.split('')
str.each do |i|
  case i
  when 'A'
    puts '4'
  when 'E'
    puts '3'
  when 'G'
    puts '6'
  when 'I'
    puts '1'
  when 'O'
    puts '0'
  when 'S'
    puts '5'
  when 'Z'
    puts '2'
  else
    print i
  end
end
