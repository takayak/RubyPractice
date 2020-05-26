# 受験者数person num
person_num = gets.chomp.to_i

ans = 0


for num in 1..person_num do
  point_arrray = gets.chomp.split
  # p point_arrray

  # s 理系 i 文系
  subject = point_arrray[0]
  english = point_arrray[1].to_i
  math = point_arrray[2].to_i
  science = point_arrray[3].to_i
  japanese= point_arrray[4].to_i
  ghistory = point_arrray[5].to_i


  # 全科目350点以上
  all_point = english + math + science + japanese + ghistory

  # 理系 s 数学理科 160点以上
  rikei_point  =  math + science

  # 文系 i 国語 160以上
  bun_point = japanese + ghistory
  if subject == "s"
    if rikei_point >= 160 && all_point >=350
      ans += 1
    end
  elsif subject == "l"
    if bun_point >= 160 && all_point >=350
      ans += 1
    end
  else
    puts "入力された科目が正しくありません。" 
  end
 
end
 puts ans

