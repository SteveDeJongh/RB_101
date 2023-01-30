# Practice problems: Additional Practice

=begin
1.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}

flintstones.each_with_index do |value, index|
  hash[value] = index
end

#or

flintstones.each do |value|
  hash[value] = flintstones.index(value)
end

2.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum = 0

ages.each do |k, v|
  sum += v
end

#or 

ages.values.inject(:+)

3.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

sub_100_ages = {}

ages.each do | key, value|
  if value < 100
    sub_100_ages[key] = value
  end
end
#though this method does not modifiy the existing array.
sub_100_ages

#or

ages.select! do |k, v|
  v < 100
end

#or 

ages.keep_if {|_,v| v < 100}

p ages

4.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

5.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|val| val.start_with?("Be")} # or {|name| name[0,2] == "Be"}
p flintstones.find_index {|val| val.start_with?("Be")}

6.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |value|
  value[0,3] # equivalent to value = value[0,3]
end

# single line version

flintstones.map! {|name| name[0,3]}

p flintstones

7.

statement = "The Flintstones Rock"

char_hash = Hash.new(0)

statement.each_char do |char|
  char_hash[char] += 1
end

#This does include spaces, can be excluded with an if condition.

#or

letters = ("A".."z").to_a

result = {}

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p char_hash
p result

8.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#output:
1
3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#output:
1
2
Returns [1,2]

9.

words = "the flintstones rock"

def titleize (string)
  result = string.split.map! do |word|
    word.capitalize
  end
  result.join(" ")
end

p titleize(words)

#or

words.split.map {|word| word.capitalize }.join(' ')

10.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# iterate over each name key name in munsters
# get age value
# create new key and value based on age value

munsters.each_key do |name|
  case munsters[name]["age"]
  when (0..17)
    munsters[name]["age_group"] = "child"
  when (18..64)
    munsters[name]["age_group"] = "adult"
  when (65..)
    munsters[name]["age_group"] = "senior"
  end
end

# or

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters


########## RB 109 Test prep, review ##############

# 1) Practice PRoblem 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flint_hsh = flintstones.to_h {|s| [s, flintstones.index(s)]}

p flintstones
p flint_hsh

#or 

flintstones_hash = {}
flintstones.each_with_index do |name, idx|
  flintstones_hash[name] = idx
end

p flintstones_hash

# 2) Practice problem 2

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_sum = 0 # local varibale `ages_sum` assigned the int value of 0

ages.values.each do |age| # `values` method called on the ages hash returns an array of ages to the
  # each method call, which is passed a block with a parameter named `age`
  ages_sum += age # `ages_sum` is re-assigned to the value of `ages_sum` + the local paramter `age`
  # which is passed each value from the array created from the ages.values method call.
end # end of the block

p ages_sum # `p` method call on local variable `ages_sum`

# Or

ages.values.inject(:+)

# This uses the array returned by the method call `ages.value`. The array is passed to the `array#inject`
# method which passes in a `:+` symbol as a parameter, which says "apply the + operator to the accumulator
# and object paramters of inject".

# 3) Practice Problem 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |_, age| age > 100}

# or

p ages.keep_if { |_, age| age < 100}

# The `keep_if` method is called with a block on the `ages` hash. The block is passed two parameters, but only
# the keys values asssigned to `age` is used. each value `age` is evaluated in the block and kept if the 
# blocks return is truthy.

# 4) Practice Problem 4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min

# The local variable `ages` is assigned to a hash. The `values` method is called on ages which returns
# an array of hash values, this is then used by the method call `min` which returns the object
# in the array with the minimum value.

# 5) Practice Problem 5

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name[0,2] == "Be"}

# Local variable `flintstones` is assigned an array of names. The `index` method is called on the
# `flintstones` array and passed a block. Within the block, each array element is assigned to the block
# parameter `name`. Inside the block, the slice method is used on `name` to return the first two
# characters of each element and compared against `"Be"` string. The array index is returned upon the first
# time the block evaluates to true.

# 6) Practice Problem 6

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name = name[0,3]
end

p flintstones

# The destructive method `map!` is called on the `flintstones` array and passed a block. The block is assigned
# the local parameter `name` to represent each element in the array. Block parameter `name` is then re-assigned to the return
# of the `slice` method call on `name`. The `map!` method call returns the modified `flintstones` array with just the first 3
# characters of each name.

# 7) Practice Problem 7

statement = "The Flintstones Rock"

characters = Hash.new(0) # Local variable `characters` is assigned to a new hash object with a default key value of 0.

statement.chars do |char|
  characters[char] += 1 unless char == " "
end

p characters

# `chars` method is called on the string variable `statement` with a block. The block has parameter `char` representing 
# each character in the `statement` string. The `characters` hash is accessed with `char` as the key and incremented by 1
# unless the `char` is equal to a " " character.

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

# Local variable `result` is assigned to an empty array. Local variable `letters` is assigned to an array containing all
# uppercase and lowercase letters. The `each` method is called on the array `letters` with a block. The block contains a parameter
# `letter` to represent each element in the `letters` array. The variable `letter_frequency` is assigned the return value of the
# `count` method call on `statement`. The `count` method call is passed a `letter` argument. This method returns the count of
#  `letter` in the `statement` string. The `result` hash is then accessed with the `letter` as the key and assigned the value
#  of `letter_frequency` if it is greater than 0.

# 8) Practice Problems 8

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#=> 1
#=> 3

# This is best explained by showign the state of the array during each iteration.

# Iteration 1)
# numbers is equal to [1,2,3,4]
# the current block paramter `number` is assigned the 1st element 1
# the block prints the block parameter `number` 1
# the array is modified, removing the first element, to [2,3,4]

# Iteration 2)
# Numbers is equal to [2,3,4]
# the current block parameter `number` is assigned to the 2nd element 3
# the block prints the block parameter `number` 3
# the array is modified, removign the first element, to [3,4]

# Iteration 3)
# Numbers is equal to [3,4]
# As the array is now only 2 elements long, this iteration does not occur.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#=> 1
#=> 2

# In this second example, as the modification is done to the end of the array, the block iterates 2 times before
# reaching the end of the array and stopping.

# 9) Practice Problems 9

words = "the flintstones rock"

p words.split.map { |word| word.capitalize}.join(" ")

The local varible `words` string element is passed to the split method, which splits the string on whitespace, and
returns an array of individual words. The array is then passed to the map method invocation, the method is passed a
block with a local `word` parameter. The capitalize method is called on the `word` paramter and capitalize the first
character of each word. This new modified array is then passed to the `join` method call with a " " passed in as an argument.
The `join` method returns a new string with each element of the array connect by a " ".

# 10) Practice Problems 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  if details["age"] < 18
    details["age_group"] = "kid"
  elsif details["age"] < 65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munsters

# The `each` method is called on the local variable `musnters` hash element and passed a block with two parameters representing
key and value named `name` and `details`. We then check the value in the value's hash key "age", and create a new key with
the appropriate string value.

#### Additional practice review

# 1)
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |ele, index|
  flintstones_hash[ele] = index
end

p flintstones_hash


# 2)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_of_ages = 0

ages.each do |_,v|
  sum_of_ages += v
end

p sum_of_ages

# Or

ages.values.inject(:+)

# 3)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! do |_,v|
  v < 100
end

# or

ages.keep_if { |_, v| v < 100 }

# 4)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

# 5)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index {|name| name.start_with?('Be')}
#or
p flintstones.index {|name| name[0,2] =='Be'}

# 6)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0,3] }

p flintstones

# 7)

statement = "The Flintstones Rock"

characters = Hash.new(0)

statement.chars do |char|
  characters[char] += 1 unless char == ' '
end

p characters

# or

result = {}
characters = ('A'..'Z').to_a + ('a'..'z').to_a

characters.each do |char|
  letter_frequency = statement.count(char)
  result[char] = letter_frequency if letter_frequency > 0
end

p result

# 8)

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#=> 1
#=> 3

# This is best explained by showing the state of the array during each iteration.

# Iteration 1)
# numbers array is [1,2,3,4]
# the current block paramter `number` is assigned the 1st element 1
# the block prints the block parameter `number` 1
# the array is modified, removing the first element, to [2,3,4]

# Iteration 2)
# Numbers array is [2,3,4]
# the current block parameter `number` is assigned to the 2nd element 3
# the block prints the block parameter `number` 3
# the array is modified, removing the first element, to [3,4]

# Iteration 3)
# Numbers array is [3,4]
# As the array is now only 2 elements long, this iteration does not occur.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#=> 1
#=> 2

# In this second example, as the modification is done to the end of the array, the block iterates 2 times before
# reaching the end of the array and stopping.

# 9)

words = "the flintstones rock"

def titleize(string)
  string.split(' ').map! { |word| word.capitalize }.join(' ')
end

p titleize(words)

# 10)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case
  when details['age'] < 18
    details['age_group'] = "Kid"
  when details['age'] < 65
    details['age_group'] = 'Adult'
  else
    details['age_group'] = 'Senior'
  end
end

p munsters

=end