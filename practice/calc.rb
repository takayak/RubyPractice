# x = 2
# y = 3

# # １回め
# y -= 1
# x = x + y
# puts x
# puts "y=#{y}" 
# while y != 0 do
#   y -= 1
#   puts "y=#{y}" 
#   puts x = x + y
# end


# def f(a,b)
#   if b == 0
#     puts 0
#   else
#     puts f(b, a % b)
#   end
# end

# f(5,2)

# def f(a,b)
#   if b == 0
#     puts a
#   else
#     puts f(b, a % b)
#   end
# end

# f(10,2)

# n = 10.to_i
# counter = 0
# for num in 0..n do
#   counter += 1
#   puts counter
# end


# cant
# def f(x)
#   if x <= 1
#     puts 0
#   elsif x % 2 == 0
#     puts f(x+1) + x
#   else
#     puts f(x-3)-x
#   end
# end
# f(10)

a = [5,2,8,3,1,6,7,9]
p a.sort

int f(int x){
  if x<=1
    return 0
  else if x%2==0
    return f(x+1)+x
  else
    return f(x-3)-x
}
f(10)