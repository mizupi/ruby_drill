# 問題
# 以下の配列に任意の値が存在するかどうか、そして何番目に存在するのか、検索するコードを作成しましょう。
# 添字が0の要素、つまり以下の配列における「1」は「配列の0番目に存在する」と表現します。
# array=[1,3,5,6,9,10,13,20,26,31]
# 任意の値が配列内に存在しない場合は、「値は配列内に存在しません」と表示し、
# 存在する場合は、配列の何番目にあるかを表示してください。

# 回答にはバイナリーサーチを使用することとします。

# 私の回答
def binary_search(array, num)
  number_of_elements = array.length
  top = 0
  last = number_of_elements - 1

  while top <= last do
    center = ((top + last) / 2).round
    if array[center] == num
      return center
    elsif array[center] < num
      top = center + 1
    else
      last = center - 1
    end
  end  
  return -1
end

array=[1,3,5,6,9,10,13,20,26,31]
puts "検索したい数字を入力してください"
num = gets.to_i
result = binary_search(array, num)

if result == -1
  puts "#{num}は配列内に存在しません"
else
  puts "#{num}は配列の#{result}番目に存在します"
end