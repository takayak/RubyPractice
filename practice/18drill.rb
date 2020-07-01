

def slice(num)
ten = num / 10 % 10 
one = num % 10
return ten,one
end

def add(a , b)
  return a + b
end

def multi(a,b)
  return a * b
end

puts "２桁の数字を入力してください。"
num = gets.to_i
X , Y = slice(num)
add = add(X,Y)
multi = multi(X,Y)
puts "10の位は#{X}"
puts "1の位は#{Y}"
puts "足し算結果と掛け算結果の合計値は#{add + multi}です"