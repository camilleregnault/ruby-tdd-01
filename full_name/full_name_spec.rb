require_relative 'full_name'

# it takes 2 strings as inputs (parameters): first_name and last_name.
# it returns a String.
# it returns nil if no argument are given.
# it returns the full name of a given couplefirst_name and last_name.
# it returns the capitalized full name.
# it returns the first name if first_name or last_name is missing.

describe '#full_name' do
  before do
    @first_name = "lisa"
    @last_name = "simpson"
    @integer_parameter = 666
    @object_parameter = {}
    @empty_string_parameter = ""
  end

  # Test 1
  # it takes 2 strings as inputs (parameters): first_name and last_name.
  it 'returns nil if no arguments are given' do
    expect(full_name).to eq(nil)
  end

  it 'raises an error if the wrong number of argument is given' do
    expect { full_name(@first_name, @last_name, 'titi') }.to raise_error(ArgumentError)
  end

  # Test 2
  # it returns a String.
  it 'returns a string' do
    expect(full_name(@first_name, @last_name)).to be_a String
  end

  # Test 3
  # it should take strings as parameters
  it 'returns nil if one or more arguments are not a string' do
    expect(full_name(@integer_parameter, @last_name)).to eq nil
    expect(full_name(@object_parameter, @last_name)).to eq nil
    expect(full_name(@first_name, @integer_parameter)).to eq nil
    expect(full_name(@first_name, @object_parameter)).to eq nil
    expect(full_name(@integer_parameter, @integer_parameter)).to eq nil
    expect(full_name(@object_parameter, @object_parameter)).to eq nil
    expect(full_name(@empty_string_parameter, @empty_string_parameter)).to eq nil
    expect(full_name(@empty_string_parameter, @last_name)).to eq nil
  end

  # Test 4
  # it returns the full name of a given couple first_name and last_name.
  it 'returns the capitalized full name of a given couple first name and last name' do
    expect(full_name(@first_name, @last_name)).to eq("#{@first_name.capitalize} #{@last_name.capitalize}")
  end

  # Test 5
  # it returns the first name if last_name is missing.
    it "returns only the first name if last_name is missing" do
      expect(full_name(@first_name)).to eq(@first_name.capitalize)
    end

end

