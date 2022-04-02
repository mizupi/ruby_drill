# 問題
# 文字列Sが与えられます。Sがpaizaと一致する場合はYESを、一致しない場合はNOを出力してください。

# すべてのテストケースにおいて、以下の条件をみたします。
# ・ Sは英小文字からなる文字列
# ・ Sの長さは 1 以上 20 未満

# 私の回答
str = gets.chomp
if str.eql?("paiza")
    puts "YES"
else
    puts "NO"
end

# この解答に辿り着く前
str = gets.chomp
if str.include?("paiza")
  puts "YES"
else
  puts "NO"
end
# これだと、S = "abcpaiza"でもYESになってしまうのでダメ

# おそらくこれでもOK（というかこのレベル問題はこちらが意図した解答だったのではと思われる…）
str = gets.chomp
if str == "paiza"
    puts "YES"
else
    puts "NO"
end