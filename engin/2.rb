prefectures_hash = {"東京都":"東京","千葉県":"千葉県","岐阜県":"岐阜市","栃木県":"宇都宮市","神奈川県":"横浜市","埼玉県":"さいたま市"}
prefectures_array = ["エラー","東京都","千葉県","岐阜県","栃木県","神奈川県","埼玉県"]

while true do
  puts "県庁所在地を知りたい県を選択してください。"
  prefectures_hash.each_with_index{|(key),i|
    i +=1
    puts  "#{i}" + ":" + "#{key}"
  }
  puts "7:処理を終了する"
  choose = gets.chomp.to_i
  p choose
  if choose.between?(1, 6)
    puts "「" + "#{prefectures_array[choose]}"+"の県庁所在地は、" + "#{prefectures_hash[:"#{prefectures_array[choose]}"]}" + "です」"
  elsif choose == 7
    puts "終了しました"
    exit
  else
    puts "正しい値を入力してください!!"
  end

end