# RB101-RB109 - Small Problems - Easy 8

=begin
1) Sum of Sums

def sum_of_sums(arr)
  sums = []
  count = 1
  arr.length.times do
    sums << arr.take(count).sum
    count += 1
  end
  sums.sum
end

#or

def sum_of_sums2(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end
  sum_total
end

#or 

def sum_of_sums3(numbers)
  total_sum = 0
  1.upto(numbers.size) do |count|
    total_sum += numbers.slice(0, count).reduce(:+)
  end
  total_sum
end

p sum_of_sums3([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums3([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums3([4]) == 4
p sum_of_sums3([1, 2, 3, 4, 5]) == 35

2) Leading Substrings

def leading_substrings(string)
  results = []
  1.upto(string.length) do |count|
    results << string[0, count] # Using string slice.
  end
  results
end

# Or

def leading_substrings(string)
  results = []
  0.upto(string.length - 1) do |index|
    results << string[0..index] # Using String#index
  end
  results
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

3) All Substrings

def substrings(string)
  results = []
  length = string.length
  start = 0
  loop do
    1.upto(length) do |count|
      results << string[start, count]
    end
    length -= 1
    start +=1
    break if start == string.length
  end
  results
end

# Or using leading_subtrings method, and passing it a string starting from +1 index each time.

def leading_substrings(string)
  results = []
  1.upto(string.length) do |length|
    results << string[0, length]
  end
  results
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

4) Palindrome Substrings

def leading_substrings(string)
  results = []
  1.upto(string.length) do |length|
    results << string[0, length]
  end
  results
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    working_string = string[start_index..-1]
    results.concat(leading_substrings(working_string))
  end
  results
end

def palindromes(string)
  results = []
  substrings(string).each do |string|
    results << string if string == string.reverse && string.length > 1
  end
  results
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Further exploration, ignore non-alphanumeric characters.

def leading_substrings(string)
  results = []
  1.upto(string.length) do |length|
    results << string[0, length]
  end
  results
end

def substrings(string)
  results = []
  (0..string.size).each do |start_index|
    working_string = string[start_index..-1]
    results.concat(leading_substrings(working_string))
  end
  results
end

def palindromes(string)
  results = []
  cleaned_string = string.downcase.gsub(/[^A-Za-z0-9]/, '') #added gsub to remove non-alphanumeric characters and ignore case.
  substrings(cleaned_string).each do |x|
    results << x if x == x.reverse && x.length > 1 #conditional test can be extracted to seperate method. ie: palindrome?
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']

5) Fizzbuzz

def fizzbuzz(start, finish)
  result = []
  start.upto(finish) do |count| #could alternatively inject another method to check fizzbuzz return value.
    if count % 5 == 0 && count % 3 == 0
      result << "fizzbuzz"
    elsif count % 5 == 0
      result << "Buzz"
    elsif count % 3 == 0
      result << "Fizz"
    else
      result << count
    end
  end
  puts result.join(', ')
end

def fizzbuzz_value(num)
  case
  when num % 5 == 0 && num % 3 == 0
    "fizzbuzz"
  when num % 5 == 0
    "Buzz"
  when num % 3 == 0
    "Fizz"
  else
    num
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

6) Double Char (Part 1)

def repeater(string)
  result_string = ''
  string.chars do |x|
    result_string << x + x # Or "<< x << x"
  end
  result_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

7) Double Char (Part 2)

CONSONANTS = %w(b B c C d D f F g G h H j J k K l L m M n N p P q Q r R s S t T v V w W x X y Y z Z)

def double_consonants(string)
  results = ''
  string.chars do |x|
    results << x if CONSONANTS.include?(x) # Could remove the need for both upper and lower case consonants to be in
    # the CONSONANTS array by checking "x.downcase" instead.
    results << x
  end
  results
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

9) Reverse It (Part 1)

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

10) Reverse It (Part 2)

def reverse_words(string)
  results = []
  string.split(' ') do |word|
    if word.length > 5
      results << word.chars.reverse.join('')
    else
      results << word
    end
  end
  results.join(' ')
end

# Refactored

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.length > 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

11) Array Average

def average(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum / array.size
end

# Or using reduce/inject

def average(array)
  sum = array.inject(:+)
  sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Further exploration, ensuring accuracy if result is not a whole number

def average(array)
  sum = array.inject(:+)
  (sum / array.size.to_f).round(2)
end

puts average([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40.33

############################### Extras from before re-organization of exercises #############################
Extra 1)

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

Extra 2)

def center_of(string)
  if string.length.odd?
    string[string.length/2]
  else
    string[string.length/2 - 1, 2]
  end
end

# or use a created center_index variable

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

Extra 2)
def prompt(message)
  puts "==> #{message}"
end

def madlibs
  prompt("Enter a noun:")
  noun = gets.chomp
  prompt("Enter a verb:")
  verb = gets.chomp
  prompt("Enter an adjective:")
  adjective = gets.chomp
  prompt("Enter an adverb:")
  adverb = gets.chomp

  sentence1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentence2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."

  puts [sentence1, sentence2].sample
end

madlibs

=end