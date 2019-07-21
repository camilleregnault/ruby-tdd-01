# The rules
# 1# Step:
# If the number is divisible by 3, the person doesn’t say the number, instead, they say “Fizz!”.
# Also, if the number contains a 5, the player must say “Buzz!”.
# Similarly, if the number is divisible by 3 and 5 a they must say “FizzBuzz!”.
# These fizzes and buzzes combine together — for example, instead of 35, I would say “Fizz, fizz, buzz!”, because the number contains a 5, is divisible by 5, and is divisible by 7.

require_relative 'fizz_buzz'

describe '#fizz_buzz' do
  before do
    @num = 2
    @multipleOf3 = 3
    @multipleOf5 = 5
    @multipleOf3And5 = 15
    @negative = -10
    @fizz = 'Fizz'
    @buzz = 'Buzz'
    @fizz_buzz = 'FizzBuzz'
    @string_parameter = 'dynamo'
  end

  describe '#fizz_buzz_num' do 

    # Test 1:
    # it takes an integer as an input.
    it 'takes an integer as an input' do
      expect(fizz_buzz_num(@num)).to eq(@num)
    end

    it 'raises an error if the wrong number of argument is given' do
      expect { fizz_buzz_num(@num, 'titi') }.to raise_error(ArgumentError)
    end

    it 'returns nil if the parameter is not an integer' do
      expect(fizz_buzz_num(@string_parameter)).to eq(nil)
    end

    # Test 2
    # If the number is divisible by 3, the number will be replaced by 'Fizz'
    it "returns 'Fizz' if the parameter is a multiple of 3" do
      expect(fizz_buzz_num(@multipleOf3)).to eq(@fizz)
    end

    # Test 3:
    # If the number is divisible by 5, the number will be replaced by 'Buzz'
    it "returns 'Buzz' if the parameter is a multiple of 5" do
      expect(fizz_buzz_num(@multipleOf5)).to eq(@buzz)
    end

    # Test 4:
    # If the number is divisible by both 3 and 5, the number will be replaced by 'FizzBuzz'
    it "returns 'FizzBuzz' if parameter is a multiple of both 3 and 5" do
      expect(fizz_buzz_num(@multipleOf3And5)).to eq(@fizz_buzz)
    end
  end

  describe '#fizz_buzz_game' do 
    # 2# Step:
    # it takes an integer as an input.
    # it returns an array which contains a serie of integer from 1 to the integer input.
    # in the output array, any multiple of 3 is replaced by 'Fizz', any multiple of 5 is replaced by 'Buzz' and any multiple of both 3 and 5 is replaced by 'FizzBuzz'.
    # - what happens if the input is not an integer? - what happens if the input is negative?
    
    # Test 1:
    # it takes an integer as an input.
    it 'takes an integer as an input' do
      expect(fizz_buzz_game(@num)).to eq((1..@num).to_a)
    end

    it 'raises an error if the wrong number of argument is given' do
      expect { fizz_buzz_game(@num, 'titi') }.to raise_error(ArgumentError)
    end

    it 'returns nil if the parameter is not an integer' do
      expect(fizz_buzz_game(@string_parameter)).to eq(nil)
    end

    it 'returns nil if the parameter is negative' do
      expect(fizz_buzz_game(@negative)).to eq(nil)
    end

    it 'returns an empty array if the parameter is equal to 0' do
      expect(fizz_buzz_game(0)).to eq([])
    end

    # Test 2:
    it "returns an array from 1 to the parameter where any multiple of 3 is replaced by 'Fizz" do
      expect(fizz_buzz_game(@multipleOf3)).to eq([1, 2, 'Fizz'])
    end

    it "returns an array from 1 to the parameter where any multiple of 3 is replaced by 'Fizz and any multiple of 5 is replaced by 'Buzz'" do
      expect(fizz_buzz_game(@multipleOf5)).to eq([1, 2, 'Fizz', 4, 'Buzz'])
    end

    it "returns an array from 1 to the parameter where any multiple of 3 is replaced by 'Fizz, any multiple of 5 is replaced by 'Buzz' and any multiple of both 3 and 5 is replaced by 'FizzBuzz'" do
      expect(fizz_buzz_game(@multipleOf3And5)).to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'  ])
    end
  end
end
