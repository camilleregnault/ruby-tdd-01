# Test Driven Development - TDD


## Setup
We suggest you to write tests with RSpec. RSpec is a Ruby gem bringing a friendly testing framework.

First, install RSpec:
```
cd ~/code/$GITHUB_NICKNAME
gem install rspec
```
Then create a new folder and then enter inside this new directory.

Let's suppose you have to write a test for a method greeting which returns Hello World:
```
# greeting.rb
def greeting
  # TODO
end
```
Here is the basic syntax of this test with RSpec:
```
# greeting_spec.rb
require_relative 'greeting'

describe '#greeting' do
  it "returns 'Hello World'"
    expect(greeting).to eq('Hello World')
  end
end
```
Finally you can launch your tests:
```
rspec greeting_spec.rb
```
You are ready to write your first test!

## Unit tests
As it is named, a unit test is designed to test a unit. In object-oriented programming, a unit is often an entire interface, such as a class, but could be an individual method.

### 1. Say my name

Create 2 files ``full_name.rb`` and ``full_name_spec.rb``:
```
touch full_name.rb
touch full_name_spec.rb
```
Write your tests:
```
require_realtive 'full_name'

describe '#full_name' do
  # TODO
end
```
You can run your tests:
```
rspec full_name_spec.rb
```

### 2. FissBuzz 
That's a great classic of technical interview. Here are the spec of the `fizz_buzz`` method:

it takes an integer as an input.
it returns an array which contains a serie of integer from 1 to the integer input.
in the output array, any multiple of 3 is replaced by 'Fizz', any multiple of 5 is replaced by 'Buzz' and any multiple of both 3 and 5 is replaced by 'FizzBuzz'.

### Bonus: Syntax correction
Install Rubocop then run it:
```
gem install rubocop
rubocop --format simple || true
```

## Doc
Rspec guidelines with Ruby [http://www.betterspecs.org/](http://www.betterspecs.org/)
