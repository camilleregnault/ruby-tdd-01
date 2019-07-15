def fizz_buzz(num)
    if !num.is_a? (Integer)
       return nil
    elsif (num % 3 == 00) && (num % 5 == 0)
      "FizzBuzz"
    elsif (num % 3 == 0)
      "Fizz"
    elsif (num % 5 == 0)
      "Buzz"
    else
      num
    end
end

# def fizz_buzz(max)
#   array = []
#   (1..max).each do |num|
#     if !num.is_a? (Integer)
#        return nil
#     elsif (num % 3 == 00) && (num % 5 == 0)
#       array += "FizzBuzz"
#     elsif (num % 3 == 0)
#       array += "Fizz"
#     elsif (num % 5 == 0)
#       array += "Buzz"
#     else
#       array += num
#     end
#   end

  # return array
    # print "Please enter a number: "
    # rescue nil
