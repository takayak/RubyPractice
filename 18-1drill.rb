# puts "hello"[0]
# puts "hello"[-1]
while true do 
  puts "英単語を入力してください"
  input = gets.chomp
  ans = input.end_with?("y")

  if ans
    puts "yです！正解"
    puts "================================================"

  else
    puts "この英単語はyで終わる単語ではありません。"
    puts "================================================"

  end
end