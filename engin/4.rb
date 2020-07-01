# 問４1から100までの数を出力するプログラムを書いてください。そして、    
#     そのプログラムの中で、3の倍数なら「Zig｣ 5の倍数なら｢Zag｣ 両方の倍数なら｢ZigZag｣と置換する
#     プログラムを書いてください。

for num in 1..100 do
  if num % 15 == 0
    puts "#{num}:" +"ZigZag"
  elsif num % 5 == 0
    puts "#{num}:" +"Zag"
  elsif num % 3 == 0
    puts "#{num}:" +"Zig"
  else
    puts "条件に不該当しません"
  end
end