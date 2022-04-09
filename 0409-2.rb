# 問題
# n 人の人の名前 s_1, ..., s_n が与えられたのち、 m 回の「攻撃」に関する情報が与えられます。各行は “p_i a_i” というフォーマットで与えられ、 p_i はダメージを受けた人の名前 （s_1, ..., s_n のいずれか） 、 a_i は p_i が受けたダメージ数を表す数です。なお、一度もダメージを受けていない人の合計ダメージは 0 とします。

# それぞれの人が受けた合計ダメージを、人の名前のアルファベットの辞書順に出力してください。

# 入力例1
# 2
# MIDORIKAWA
# KIRISHIMA
# 2
# KIRISHIMA 1
# KIRISHIMA 2

# 出力例1
# 3
# 0

# 私の回答
n = gets.to_i

damage = {}
n.times do
    name = gets.chomp
    damage[name] = 0
end

m = gets.to_i
m.times do
    name, attack = gets.split(' ')
    damage[name] += attack.to_i
end

damage =damage.sort

damage.each do |k, v|
    puts "#{v}"
end

# 解答例
n = gets.to_i

damage = {}
n.times do
  name = gets.chomp
  damage[name] = 0
end

m = gets.to_i
m.times do
  name, attack = gets.split(' ')
  damage[name] += attack.to_i
end

sorted_damage = damage.sort

sorted_damage.each { |_, dmg| puts dmg }

# この問題を解く上でのポイントは以下の通りです。
# Hash クラスのオブジェクトをソートしたいときは Enumerable クラスの sort メソッドや sort_by メソッドを使うことができる (Hash クラスは Enumerable クラスを継承している)
# 返り値は [[key_1, value_1], [key_2, value_2], ...] のような 2 次元配列です。
# ハッシュ.sort とすると、ハッシュ のキーで昇順にソートする
# 因みに、詳しい説明はしませんが、ハッシュの値でソートしたいときの方法はたとえば、以下の方法があります。
# ハッシュ.sort {|this, other| this[1] <=> other[1]}
# ハッシュ.sort_by {|_, val| val}
# 解答コードでは sorted_damage = damage.sort でハッシュ damage をキーで昇順にソートして sorted_damage に代入しています。