# 関数f(a, b)は「b=0ならば0，そうでないならばf(b, aをbで割った余り)」である。
# 以下を計算しなさい。(ただし，aとbは非負整数とする。)

# f(5, 2)=

# def f(a,b)
#   ans = (b / a) % a
#   puts ans
# end

# f(5,2)
 
# puts 2 % 5

# n = 10.to_i
# counter = 0

# for i in [0以上n以下]
#     counterを1増やす;
# for  in 

# int f(int x){
#   if x<=1
#     return 0
#   else if x%2==0
#     return f(x+1)+x
#   else
#     return f(x-3)-x
#   end
# end
# }
# f(10)

# def f(x)
#   if x <= 1
#     puts 0
#   elsif x % 2 == 0
#     puts f(x + 1) + x
#   else
#     puts f(x - 3 ) - x
#   end
  
# end
# f(10)


def f(x)
  if x <= 1
    puts 0
  elsif x % 2 == 0
    puts f(x+1) + x
  else
    puts f(x-3) - x
  end
end
f(10)

# array = "1 2"
# array = array.split
# array2 = "3 4"
# array2 = array2.split
# array.concat(array2)
# p array