# def fizbuz(num)
#   if num % 15 == 0
#     puts "fizzbuzz"
#   elsif num % 5 == 0
#     puts "buzz"
#   elsif num % 3 == 0
#     puts "fizz"
#   else
#     puts num.to_i
#   end
# end



# for num in 1..1000000 do
#   fizbuz(num)
# end


def fuzbuz(num)
  if num % 15 == 0
    "bizbuz"
  elsif num % 5 == 0
    "fiz"
  elsif num % 3 == 0
    "buz"
  else
    num.to_s
  end
end

# for num in 1..20 do
#   fuzbuz(num)
# end


require 'minitest/autorun'
class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1' , fuzbuz(1)
    assert_equal '2' , fuzbuz(2)
    assert_equal 'buz' , fuzbuz(3)
  end
end
