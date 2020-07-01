while true do 
  puts "お使いのOSを数字で入力してください"
  puts "1:mac"
  puts "2:windows"
  puts "3:終了する"

  device = gets.chomp
  device_array = ["mac", "windows"]

  if device == "1" || device == "１"
    puts "#{device_array[0]}です"
  elsif device == "2" || device == "２"
    puts "#{device_array[1]}です"
  elsif device == "3" || device == "３"
    exit
  else
    puts "どちらでもありません"
  end

end