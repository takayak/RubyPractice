# # 数値入力
# num = gets.chomp

point_array = ["one" ,"two", "three" ,"four","five","six","seven","eight","nine"]

# 英語変換のハッシュ キー：値
NUM_ENG = {'0' => 'zero',
  '1' => 'one',
  '2' => 'two',
  '3' => 'three',
  '4' => 'four',
  '5' => 'five',
  '6' => 'six',
  '7' => 'seven',
  '8' => 'eight',
  '9' => 'nine',
  '10' => 'ten',
  '11' => 'eleven',
  '12' => 'twelve',
  '13' => 'thirteen',
  '14' => 'fourteen',
  '15' => 'fifteen',
  '16' => 'sixteen',
  '17' => 'seventeen',
  '18' => 'eighteen',
  '19' => 'nineteen',
  '20' => 'twenty',
  '30' => 'thirty',
  '40' => 'fourty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => 'eighty',
  '90' => 'ninety'
}


def ten(num)
  num = num.to_i.to_s
  if num.to_i < 20
    NUM_ENG[num]
  elsif num.to_i % 10 == 0
    NUM_ENG[num]
  else
    NUM_ENG[num[0] + '0'] + ' ' + NUM_ENG[num[1]]
  end
end

def hundred(num)
  if num.to_i % 100 == 0
    ten(num[0]) + ' hundred'
  else
    ten(num[0]) + ' hundred ' + ten(num[1..2])
  end
end


def thousand(num)
  if num.to_i % 1000 == 0
    ten(num[0]) + ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0]) + ' thousand ' + ten(num[1]) + ' hundred'
  else
    ten(num[0]) + ' thousand ' + ten(num[1]) +' hundred '+ ten(num[2..3])
  end
end

# １万のくらい
def ten_thousand(num)
  if num.to_i % 10000 == 0
    ten(num[0..1]) + ' thousand '
  elsif num.to_i % 100 == 0
    ten(num[0..1]) + ' thousand ' + ten(num[2]) + ' hundred'
  else
    ten(num[0..1]) + ' thousand ' + ten(num[2]) + ' hundred ' + ten(num[3..4])
  end
end

# 10万の位
def hundred_thousand(num)
  if num.to_i % 100000 == 0
    ten(num[0]) + ' hundred thousand'
  elsif num.to_i % 1000 == 0
    ten(num[0]) + ' hundred '+ ten(num[1..2])+ ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0]) + ' hundred '+ ten(num[1..2])+ ' thousand ' + ten(num[3]) + ' hundred'
  else
    ten(num[0]) + ' hundred '+ ten(num[1..2])+ ' thousand ' + ten(num[3]) + ' hundred ' + ten(num[4..5])
  end
end

# 100万 million
def million(num)
  if num.to_i % 1000000 == 0
    ten(num[0]) + ' million'
  elsif num.to_i % 100000 == 0
    ten(num[0]) + ' million ' + ten(num[1]) + ' hundred thousand'
  elsif num.to_i % 1000 == 0
    ten(num[0]) + ' million ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0]) + ' million ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' thousand ' + ten(num[4]) + ' hundred'
  else
    ten(num[0]) + ' million ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' thousand ' + ten(num[4]) + ' hundred ' + ten(num[5..6]) 
  end
end


# 1000万
def ten_million(num)
  if num.to_i % 1000000 == 0
    ten(num[0..1]) + ' million'
  elsif num.to_i % 100000 == 0
    ten(num[0..1]) + ' million ' + ten(num[2]) + ' hundred thousand'
  elsif num.to_i % 1000 == 0
    ten(num[0..1]) + ' million ' + ten(num[2]) + ' hundred ' + ten(num[3..4]) + ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0..1]) + ' million ' + ten(num[2]) + ' hundred ' + ten(num[3..4]) + ' thousand ' +  ten(num[5]) + ' hundred'
  else
    ten(num[0..1]) + ' million ' + ten(num[2]) + ' hundred ' + ten(num[3..4]) + ' thousand ' +  ten(num[5]) + ' hundred ' + ten(num[6..7])
  end
end

# 1億 one hundred million
def hundred_million(num)
  if num.to_i % 100000000 == 0
    ten(num[0]) + ' hundred million'
  elsif num.to_i % 1000000 == 0
    ten(num[0]) + ' hundred ' +ten(num[1..2]) + ' million'
  elsif num.to_i % 100000 == 0
    ten(num[0]) + ' hundred ' +ten(num[1..2]) + ' million ' + ten(num[3]) + ' hundred thousand'
  elsif num.to_i % 1000 == 0
    ten(num[0]) + ' hundred ' +ten(num[1..2]) + ' million ' + ten(num[3]) + ' hundred ' + ten(num[4..5]) + ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0]) + ' hundred ' +ten(num[1..2]) + ' million ' + ten(num[3]) + ' hundred ' + ten(num[4..5]) + ' thousand ' + ten(num[6]) + ' hundred'
  else
    ten(num[0]) + ' hundred ' +ten(num[1..2]) + ' million ' + ten(num[3]) + ' hundred ' + ten(num[4..5]) + ' thousand ' + ten(num[6]) + ' hundred ' + ten(num[7..8]) 
  end
end

# 10億 ten hundred million
def billion(num)
  if num.to_i % 1000000000 == 0
    ten(num[0]) + ' billion'
  elsif num.to_i % 100000000 == 0
    ten(num[0]) + ' billion ' + ten(num[1]) + ' hundred million'
  elsif num.to_i % 1000000 == 0
    ten(num[0]) + ' billion ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' million'
  elsif num.to_i % 100000 == 0
    ten(num[0]) + ' billion ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' million ' + ten(num[4]) + ' hundred thousand'
  elsif num.to_i % 1000 == 0
    ten(num[0]) + ' billion ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' million ' + ten(num[4]) + ' hundred ' +  ten(num[5..6]) + ' thousand'
  elsif num.to_i % 100 == 0
    ten(num[0]) + ' billion ' + ten(num[1]) + ' hundred ' + ten(num[2..3]) + ' million ' + ten(num[4]) + ' hundred ' +  ten(num[5..6]) + ' thousand ' + ten(num[7]) + ' hundred'
  else
    ten(num[0]) + ' billion ' +NUM_ENG[num[1]] + ' hundred ' + ten(num[2..3]) + ' million ' + ten(num[4]) + ' hundred ' +  ten(num[5..6]) + ' thousand ' + ten(num[7]) + ' hundred ' + ten(num[8..9])
  end

end


def point(num_point)
  " " + "point" + " "+ point_array[num_point - 1]
end




# メインの処理はここから
# p num.to_s.length
# if num.include(.)
#   puts num
#   p num.split('.')
# end


# num_array = num.split('.')
# 小数点取り除いたもの（整数部分 num）
# p num = num_array[0]

# 小数点以下をnum_pointへ代入
# p num_point = num_array[1]
# p "this is point array " + point_array[0]
# p "numpoint[0]" + num_point[0]

# num = gets.chomp
# p num
# for num in 100..200 do
# num = gets.chomp
# for num in (10000..100000).map(&:to_s)
  # 100万OK
# p num
# end
def point(num_point)
  if num_point.size == 1
    ' point ' + ten(num_point) 
  elsif num_point.size == 2
    ' point ' + ten(num_point[0]) +' ' + ten(num_point[1])
  elsif num_point.size == 3
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2])
  elsif num_point.size == 4
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])
  elsif num_point.size == 5
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])
  elsif num_point.size == 6
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])+ ' ' + ten(num_point[5])
  elsif num_point.size == 7
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])+ ' ' + ten(num_point[5]) + ' ' + ten(num_point[6])
  elsif num_point.size == 8
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])+ ' ' + ten(num_point[5]) + ' ' + ten(num_point[6])+ ' ' + ten(num_point[7])
  elsif num_point.size == 9
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])+ ' ' + ten(num_point[5]) + ' ' + ten(num_point[6])+ ' ' + ten(num_point[7])+ ' ' + ten(num_point[8])
  elsif num_point.size == 10
    ' point ' + ten(num_point[0]) + ' ' + ten(num_point[1])+ ' ' + ten(num_point[2]) + ' ' + ten(num_point[3])+ ' ' + ten(num_point[4])+ ' ' + ten(num_point[5]) + ' ' + ten(num_point[6])+ ' ' + ten(num_point[7])+ ' ' + ten(num_point[8])+ ' ' + ten(num_point[9])
  end
end

num = gets.chomp

num = num.split('.')
# p 'num[0] = ' + num[0]
# p 'num[1] = ' +num[1]
num ,num_point = num[0] , num[1]
# num_point = num[1]
# p num
# p num_point
# p point(num_point)
# def num_point_en(num_point)
#   'point' + ten(num[num_point[0]])
# end
if num_point
  if num.size == 1
    # puts "一桁ですね"
    # puts num_array1[num.to_i - 1].capitalize
    puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 2 
    # puts "二桁ですね"
    puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 3
    # puts "３桁ですね"
    puts hundred(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 4
    # puts "４桁ですね"
    puts thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 5
    # puts "５桁ですね"
    puts ten_thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 6
    # puts "６桁10万"
    puts hundred_thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 7
    # puts "7桁100万"
    puts million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 8
    # puts "8桁1000万"
    puts ten_million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 9
    # puts "9桁1億"
    puts hundred_million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  elsif num.size == 10
    # puts "9桁10億 ゴール"
    puts billion(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
  else
    # 例外には -1を出力
    puts -1
  end
else
  if num.size == 1
    # puts "一桁ですね"
    # puts num_array1[num.to_i - 1].capitalize
    puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 2 
    # puts "二桁ですね"
    puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 3
    # puts "３桁ですね"
    puts hundred(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 4
    # puts "４桁ですね"
    puts thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 5
    # puts "５桁ですね"
    puts ten_thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 6
    # puts "６桁10万"
    puts hundred_thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 7
    # puts "7桁100万"
    puts million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 8
    # puts "8桁1000万"
    puts ten_million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 9
    # puts "9桁1億"
    puts hundred_million(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  elsif num.size == 10
    # puts "9桁10億 ゴール"
    puts billion(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
  else
    # 例外には -1を出力
    puts -1
  end
end
# end