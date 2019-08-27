# frozen_string_literal: true

def count_letters(string)
  raise ArgumentError, 'Argument is not a string' unless string.is_a? String
  return 'You kidding me !' if string.empty?
  raise ArgumentError, 'Argument is not only alphabet characters' unless string.match? /\A[a-zA-Z'-]*\z/

  letter_count = Hash.new(0)
  clean_string = string.downcase.split('')
  clean_string.each { |value| letter_count[value.to_sym] += 1 }
  letter_count
end
