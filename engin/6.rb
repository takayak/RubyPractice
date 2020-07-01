def count(num1,num2)
  for num in num1..num2 do
    if num % 15 == 0
      puts "#{num}:" +"ZigZag"
    elsif num % 5 == 0
      puts "#{num}:" +"Zag"
    elsif num % 3 == 0
      puts "#{num}:" +"Zig"
    else
      puts "条件に該当しません"
    end
  end
end


puts "始まりの数字を入力してください"
num1 = gets.chomp.to_i
puts "終わりの数字を入力してください"
num2 = gets.chomp.to_i
count(num1,num2)
count(num1,num2)