def fizz_buzz_num(num)
  return nil unless num.is_a? Integer
  return 'FizzBuzz' if (num % 3).zero? && (num % 5).zero?
  return 'Fizz' if (num % 3).zero?
  return 'Buzz' if (num % 5).zero?

  num

  # if !num.is_a? Integer
  #   nil
  # elsif (num % 3).zero? && (num % 5).zero?
  #   'FizzBuzz'
  # elsif (num % 3).zero?
  #   'Fizz'
  # elsif (num % 5).zero?
  #   'Buzz'
  # else
  #   num
  # end
end

def fizz_buzz_game(num)
  return nil unless num.is_a? Integer
  return nil if num.negative?
  return [] if num.zero?

  arr = []
  num.times do |i|
    inc = i + 1
    arr << if (inc % 3).zero? && (inc % 5).zero?
            'FizzBuzz'
      elsif (inc % 3).zero?
        'Fizz'
      elsif (inc % 5).zero?
        'Buzz'
      else
        inc
    end
  end
  arr
end
