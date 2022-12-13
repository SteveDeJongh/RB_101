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


=end