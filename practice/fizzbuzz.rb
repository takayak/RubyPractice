num = 1 
while num < 101
  str = ""
  if num % 3 == 0 
    str = str + "fizz"
  end

  if num % 5 == 0 
    str = str + "buzz"
  end
  if str == ""
    str = "３の倍数でも５の倍数でもない"
  end
  puts "#{num}→ #{str}"
  # puts str
  num += 1
end