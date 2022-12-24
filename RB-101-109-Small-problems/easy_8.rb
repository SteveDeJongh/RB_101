# RB101-RB109 - Small Problems - Easy 7

=begin
1)
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

p sum_of_sums3([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums3([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums3([4]) == 4
p sum_of_sums3([1, 2, 3, 4, 5]) == 35

2)

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

3)
def leading_substrings(string)
  results = []
  1.upto(string.length) do |count|
    results << string[0, count]
  end
  results
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

4)
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

#or

def leading_substrings(string)
  results = []
  1.upto(string.length) do |count|
    results << string[0, count]
  end
  results
end

def substrings1(string)
  results = []
  (0..string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

p substrings1('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

5)




=end

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

def palindromes(string)
  results = []
  substrings(string).each do |x|
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
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]