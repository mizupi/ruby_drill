# 問題
# 0 ~ 999 の整数 n が与えられます。 n が 3 桁の数である場合には n をそのまま出力し、 n が 2 桁の数である場合には n の先頭に 0 をひとつ、 1 桁の数である場合には n の先頭に 0 をふたつ加えたものを出力してください。

# 私の回答
n = gets.to_i
if n < 100
    num = "0"+ "#{n}"
    if n < 10
        num = "0" +"#{num}"
    end
    puts num
else
    puts n
end

# 解答例1
n = gets
n = '0' + n while n.length < 3

puts n

# 解説1
# n の桁数を簡単に知るために n を文字列型で受け取ります。
# n の桁数 (n の文字列としての長さ) は n.length または n.size で知ることができます。
# while 文で n.length < 3 である間 n = '0' + n の処理を繰り返すことで、'0' を必要な数だけ n の先頭に付けることができます。

# 解答例2
n = gets.to_i

puts sprintf('%03d', n)

# 解説2
# sprintf メソッドを用いる方法です。
# sprintf メソッドは以下の書式に従った文字列内に変数の値を使うことができます。
# %[<name>][フラグ][幅][.精度]指示子
# %[nth$][フラグ][幅][.精度]指示子
# [] で囲まれた部分は省略可能です。
# 今回の場合、
# フラグ 0 (出力が右詰めの場合に余った部分に空白の代わりに '0' を詰める)
# 幅 3 (生成文字列の長さを 3 に指定)
# 指示子 d (引数の数値を 10 進数の整数として解釈)
# の 3 つを用いて「幅は 3 で、3 に満たない分は 0 を埋める」という書式を作ります。
# 以上のことから、puts sprintf('%03d', n) によって題意を満たす文字列が出力されることが分かります
# sprintf メソッドについてはこちらで詳しく知ることができます。