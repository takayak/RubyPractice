def fuzbuz(num)
  if num % 15 == 0
    puts "bizbuz"
  elsif num % 5 == 0
    puts "fiz"
  elsif num % 3 == 0
    puts "buz"
  else
    puts num.to_i
  end
end