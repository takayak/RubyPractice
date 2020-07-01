
def getPriceInTax(price)
  price_with_tax = price * 1.08
  price_with_tax = price_with_tax.round
  puts "税込価格は"+"#{price_with_tax}" + "円です"
end

puts "税込価格を計算します。金額を入力していください。"
price = gets.chomp.to_i

price_with_tax = getPriceInTax(price)