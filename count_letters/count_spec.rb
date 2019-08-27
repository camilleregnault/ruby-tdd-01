require_relative 'count'

require 'rspec'

describe '##count' do
  before do
    @string = 'ajCdaABCCC'
    @string_count = { :a => 3, :j => 1, :c => 4, :d => 1, :b => 1 }
    @integer = 123
    @wrong_string = 'abKjCda!bbAB3'
  end
  
  it 'raises an error if no arguments are given' do
    expect { count_letters }.to raise_error(ArgumentError)
  end

  it 'raises an error when the parameter is not a string' do
    expect { count_letters(@integer) }.to raise_error(ArgumentError)
  end

  it 'raises an error when the wrong number of argument is given' do
    expect { count_letters(@string, @integer) }.to raise_error(ArgumentError)
  end
  
  it 'returns a message when string is emtpy' do 
    expect(count_letters('')).to eq('You kidding me !')
  end

  it 'raises an error when string is not only alphabet characters' do
    expect { count_letters(@wrong_string) }.to raise_error(ArgumentError)
  end

  it 'returns letters count for a given string' do
    expect(count_letters(@string)).to eq(@string_count)
  end

end
