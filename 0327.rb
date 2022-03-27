# 問題
# 以下の仕様を満たすアプリケーションを作成してください。また、必ず注意書きを読んでから作成に取り掛かってください。

# 前回からの変更点
# 今回新たに追加実装してもらう機能は主に以下の2点です。

# 商品ごとの利益・利益率を表示させる
# 商品の合計（総売上・総利益・平均利益率）を表示させる

# ヒント

# to_fメソッド
# to_fメソッドとは、小数点以下を表示させるために使用するメソッドです。to_fメソッドを使用することで、小数の計算を行うことができます。

# 【例】
# # メソッドの使い方
# 3.to_f => 3.0

# 小数の計算
# 3 / 5 => 0になってしまう
# 3.to_f / 5.to_f => 0.6と表示される

# roundメソッド
# roundメソッドとは、小数点以下を四捨五入するときに使用するメソッドです。引数に数値を設定することで、四捨五入する桁数を指定することができます。

# 【例】
# num = 0.5728247
# 小数点1桁目を四捨五入して、小数点以下は表示なし
# num.round => 1 と表示される
# 小数点3桁目を四捨五入して、小数点2桁まで表示する
# num.round(2) => 0.57 と表示される

# 雛形
def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "---------------------------"

  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item)
  # 保存された商品の情報を元に、利益と利益率を計算する

end

def check_items(registered_item)
  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：円"
    puts "利益率：%\n#{line}"
  end

  # 全ての商品の合計（総売上・総利益・平均利益率）を表示する
  puts "【合計】\n#{line}"
  puts "総売上 : 円"
  puts "総利益 : 円"
  puts "平均利益率 : %\n#{line}"

end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end

# 私の回答
def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "---------------------------"

  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item, val)
  # 保存された商品の情報を元に、利益と利益率を計算する
  if val == 1
   item[:profit] = item[:selling_price] - item[:cost_price]
  else
   item[:profit_rate] = ((item[:profit].to_f / item[:selling_price].to_f) * 100).round
  end
end

def check_items(registered_item)
  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  total_selling = 0
  total_profit = 0
  profit_avarage = 0

  registered_item.each do |item|

    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：#{calculate_profit(item, 1)}円"
    puts "利益率：#{calculate_profit(item, 2)}%\n#{line}"

    total_selling += item[:selling_price]
    total_profit += calculate_profit(item, 1) 
    profit_avarage = ((total_profit.to_f / total_selling.to_f) * 100).round
  end

  # 全ての商品の合計（総売上・総利益・平均利益率）を表示する
  puts "【合計】\n#{line}"
  puts "総売上 :#{total_selling}円"
  puts "総利益 :#{total_profit}円"
  puts "平均利益率 :#{profit_avarage}%\n#{line}"

end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end

# 模範回答
def register_item(registered_item)
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:cost_price] = gets.to_i
  line = "---------------------------"

  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:cost_price]}円\n#{line}"

  registered_item << item

  return registered_item
end

def calculate_profit(item)
  # 保存された商品の情報を元に、利益と利益率を計算する
  profit = item[:selling_price] - item[:cost_price]
  profit_rate = profit.to_f / item[:selling_price].to_f

  item[:profit] = profit
  item[:profit_rate] = profit_rate
  return item
end

def check_items(registered_item)
  # 変数の定義
  total_profit = 0
  total_sales = 0

  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）と、それぞれの利益・利益率を計算し、商品ごとに表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    item = calculate_profit(item) # 利益計算のために、calculate_profitメソッドの呼び出し
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}円"
    puts "仕入れ値：#{item[:cost_price]}円"
    puts "利益：#{item[:profit]}円"
    puts "利益率：#{(item[:profit_rate] * 100).round(2)}%\n#{line}"

    total_profit += item[:profit]
    total_sales += item[:selling_price]
  end

  # 全ての商品の合計（総売上・総利益・平均利益率）を表示する
  profit_avarage = total_profit.to_f / total_sales.to_f
  puts "【合計】\n#{line}"
  puts "総売上 : #{total_sales}円"
  puts "総利益 : #{total_profit}円"
  puts "平均利益率 : #{(profit_avarage * 100).round(2)}%\n#{line}"
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []

while true do
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の利益一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)
  elsif input == 2 then
    check_items(item_list)
  elsif input == 3 then
    end_program
  else
    exception
  end
end

# 解説
# calculate_profitメソッド内のコードを説明します。
# 22〜23行目で、商品の利益と利益率の算出をしています。利益率を算出するときに、小数の計算をするためにto_fメソッドを使用しています。
# 25〜26行目で、算出した利益と利益率をitemハッシュに格納しています。
# 27行目で、メソッドの呼び出し元にitemハッシュを返しています。

# 続いて、check_itemsメソッド内の一部のコードについて説明します。
# 32〜33行目で、総利益・総売上を格納するための変数をそれぞれtotal_profit、total_salesと定義しています。
# 40行目で、calculate_profitメソッドを呼び出し、返ってきた値をもとにして、itemハッシュを更新しています。
# 44〜45行目で、利益と利益率を表示させています。利益率を小数点2桁まで表示するために、roundメソッドを使って小数点3桁目を四捨五入しています。
# 47〜48行目で、総利益と総売上を算出しています。
# 52行目で、総利益と総売上をもとにして、平均利益率を算出しています。
# これらをもとにして、53〜56行目で総売上、総利益、平均利益率を表示しています。

# 感想
# calculate_profitのうち、利益と利益率をどうやって区別して呼び出せばよいか悩みました。
# 困った挙句第二引数を意味のない数字（1と2）で設定し、if文で呼び出すことにしたのです。

# 模範回答では、そもそもcalculate_profitメソッドで最後にreturn itemとして、計算結果をitemハッシュに格納したんですね。
# そうすることで他のキーと同じようにシンボルで呼び出せるようにしています。