# # 数値入力
# num = gets.chomp

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

# １万の
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

# 1億 one hundred billion
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

# 10億 ten hundred billion
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



# 小数点以下の 変換記述 10桁まで
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




# 数値を入力
num = gets.chomp

# 001 01などの異常値を除外
unless num[0] == '0' && num.include?(".")
  puts -1
else

  # 小数点以下の分割
  num = num.split('.')
  # 整数をnum 少数をnum_point 変数で管理
  num ,num_point = num[0] , num[1]

  if num_point
    if num.size == 1
      # puts "一桁"
      # puts num_array1[num.to_i - 1].capitalize
      puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
    elsif num.size == 2 
      # puts "二桁"
      puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
    elsif num.size == 3
      # puts "３桁"
      puts hundred(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
    elsif num.size == 4
      # puts "４桁"
      puts thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
    elsif num.size == 5
      # puts "５桁"
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
      # puts "9桁10億"
      puts billion(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize + point(num_point)
    else
      # 例外には -1を出力
      puts -1
    end
  else
    if num.size == 1
      # puts "1桁"
      puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
    elsif num.size == 2 
      # puts "2桁"
      puts ten(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
    elsif num.size == 3
      # puts "３桁"
      puts hundred(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
    elsif num.size == 4
      # puts "４桁1000"
      puts thousand(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
    elsif num.size == 5
      # puts "５桁1万"
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
      # puts "9桁10億"
      puts billion(num).gsub(/ zero hundred| zero million| zero billion| zero thousand/){""}.capitalize
    else
      # 例外には -1を出力
      puts -1
    end
  end
end