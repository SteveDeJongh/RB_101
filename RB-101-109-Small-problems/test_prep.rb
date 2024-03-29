############## RB 109 test prep ##########

=begin

Test checklist:
X local variable scope, especially how local variables interact with method invocations with blocks and method definitions
X mutating vs non-mutating methods, pass-by-reference vs pass-by-value
X working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). Review the two lessons on these topics thoroughly.
X variables as pointers
X puts vs return
X false vs nil and the idea of truthiness (truthy and falsy values)
X method definition and method invocation
X implicit return value of method invocations and blocks
X how the Array#sort method works

Some specifics:
X Assignments, remain consistent in how they are described.
X Truthiness, refer to returns as "truhy" or "falsey" unless excplicitely true or false.
X Method Definiton and Method Invocation (More variable scope)
X Variable References and Object Mutability Arcticles
   READ Variable References and Mutability of Ruby Objects
   READ Mutating and Non-Mutating Methods in Ruby
   READ Object Passing in Ruby - Pass by Reference or Pass by Value
X Assessment prep videos 1, 2 & 3

RB101 Exercise Database:

RB109 Written
Additonal Practice Problems:
DONE 1,
DONE 2,
DONE 3,

Chris Larwoods blog post
X  109 Study Guide and all linked articles.
X  Srdjan's 4-part blog series:
X   Part1
X   Part2
X   Part3
X    Part4
  Callie's Article.

Topics:
X  naming conventions: legal vs. idiomatic, illegal vs. non-idiomatic
X  numbers, including NaN and Infinity
X  strings
X  interpolation in strings
X  boolean vs. truthiness
X  nil
X  array and hash syntax
X  array properties and methods: array.size, array.push, array.pop
X  operators
X    numeric operators: +, -, *, /, %, divmod, **
X    string operators: +, *
X    conditional operators: ==, ==, <, >, <=, >=, ternary
X    logical operators and short-circuit evaluation: !, &&, ||
X    operator precedence
X  coercing values: #to_s, #to_i, #to_f, #to_a, #to_h
X  mutability, immutability, and constants
X  variables
X    identifier: variable names, constant names, method names
X    initialization and reassignment
X    uninitialized variables
X    scope
X    variables as pointers
X  conditionals and loops
X  puts
X  require
X  methods
X    definition and invocation
X    default parameters
X    return values
X    parameters vs. arguments
X    function scope
X    function composition
X    output vs. return values, side effects
X    pass-by-reference and pass-by-value
X    the call stack
X  expressions and statements

Concepts:
Block variable scope.
Block variable scope in relation to different looping constructs.
Variable shadowing in relation to block parameter naming.
Method variable scope, passing in variables as arguments.
Mutating vs non-mutating methods.
Method side effects.
Identifying mutating methods
Pass by value and pass by reference and Object passing.
Mutable vs imutable objects

Interview prep:
x Review RB 109 written exercise problems
x Written exam question review, 1,2,3,4,5,6,7,8,9,10.
x Review concepts

Codewars prep:
x 1.Count letters in string
x 2.Find all pairs
x 3.Return substring instance count
x 4.Alphabet symmetry
x 5.Longest vowel chain
x 6.Non-even substrings
x 7.Substring fun
x 8.Repeated Substring
x 9.Typoglycemia Generator (Hard! Revisit if possible.)
x 10.Most frequently used words in a text]
x 11.Extract the domain name from a URL (Revisit, better use of REGEX)
x 12. Detect Pangram
x 13. Kebabize
14. Dubstep
x 15. Take a Ten Minute Walk
x 16. Stop gninnipS My sdroW!
x 17. Write Number in Expanded Form
x 18. Persistent Bugger.
x 19. Title Case
x 20. Count and Group Character Occurrences in a String
x 21. Find the Mine!
x 22. Scramblies
x 23. Longest alphabetical substring
x 24. The Hashtag Generator
x 25. Pete, the baker
x 26. Mean Square Error
x 27. Exponent method
x 28. Where my anagrams at?
x 29. Split Strings
x 30. Anagram difference
x 31. Anagram Detection
x 32. Highest Scoring Word
x 33. Replace With Alphabet Position
x 34. Sherlock on pockets
x 35. Mexican Wave
x 36. Delete a Digit
x 37. Multiples of 3 or 5
x 38. String transformer
x 39. Largest product in a series
x 40. Duplicate Encoder
x 41. Backspaces in string
x 42. Sort Arrays (Ignoring Case)
x 43. Transform To Prime
x 44. Counting Duplicates
x 45. Alphabetized
x 46. Sum of Digits / Digital Root
x 47. Array.diff
x 48. Where is my parent!?(cry)
49. Playing with digits
x 50. Equal Sides Of An Array
x 51. Reverse or rotate?
x 51. Decipher this!
x 52. Bouncing Balls
x 53. WeIrD StRiNg CaSe
x 54. Are they the "same"?
x 55. Grouping and Counting
x 56. Find the Nexus of the Codewars Universe
x 57. Count letters in string
x 58. Triple trouble
x 59. Which are in?
x 60. Format a string of names like 'Bart, Lisa & Maggie'.
x 61. Find the missing letter
x 62. Who likes it?
x 63. Find The Parity Outlier
x 64. Is Integer Array?
65. Reversing and Combining Text
66. Integer reduction

############### RB119 Written Exam Prep

Specific topics of interest:
X String and Array operations: indexing, range indexing (slicing), negative indexes, assigning elements
X Hash operations: indexing, string and symbol keys
X String methods: chars, concat, count, downcase, downcase!, each, each_with_index, each_with_object, freeze,
    include?, map, map!, replace, reverse, reverse!, size, slice, slice!, split, strip, strip!, 
    `upcase, upcase!, upto
X  Array methods: all?, any?, each, each_with_index, each_with_object, fetch, first, include?, join,
    last, map, map!, partition, pop, push, reverse, reverse!, select, select!, shift, slice, 
    sort, splice, unshift
X Hash methods: all?, any?, each_key, each_value, empty?, include?, key, key?, keys, map, select,
    select!, value?, values
X iteration, break and next
X selection and transformation
X nested data structures and nested iteration
X shallow copy and deep copy
X method chaining

Review the following sections from the RB109 exam study guide:

X Using a REPL
X How to Answer the Assessment Questions
X   Example
X   Bullet Points
X   Precision of Language
X Time Management
X Online Resources
X Additional Tips

############### RB119 Interview Exam Prep

- working with simple data structures like arrays and hashes
- how to iterate over an array, string, or a hash's elements, and know exactly how to control the iteration flow. 
  Specifically, understand when to use break and continue.
- manipulating arrays and hashes. For example, an exercise might be "reverse an array without using the built-in 
  Array#reverse method", or "select the element out of the array if its index is a Fibonacci number," or "write a 
  function that removes every other element from an array."

############## Launch School Live Session Beginning Ruby Part 1

### Ruby's syntactical sugar and Where does the code come from?

puts "hello" #same as puts("hello")

string = 'a string'

def string
  'a method'
end

p string
p string()

# 1) "puts" method invocation. Parentheses are optional.
# 2) In order to invoke a method instead of local variable use method() (include optional parenthases)
# 3) In order to invoke method not from the core library, you must "require" the method first.

###Local Variable scope

Variable intiialization variable re-assignment visually look the same.

Local variables initialized in the local scope are accessible inside blocks.
Variables initialized inside a block is not accessible outside the block.

############## Launch School Live Session Beginning Ruby Part 2

### Pass by reference vs pass by value

def amethod(param)
  param += " world" # Re-assignemnet, returns a new string object.
  # or param + " world" # Concatenation, returns a new string object and makes no change to param.
  # or param << " world" # Mutates the str object.
end

str = 'hello'
amethod(str)

p str

# Variables as pointers:

a = 'hello'
b = a

b << ' world'

#----- 2 variables; 1 object

p a
p b

a += b # re-assignment of variable a to a new object. 

#----- 2 variables; 2 objects

b << ' universe'

p a #=> "Hello worldhello world"
p b #=> "Hello world universe"

############## Launch School Live Session Beginning Ruby Part 3

arr = [1,2,3,4,5,6,7,8,9,10]

idx = 0

# loop do
#   puts arr[idx]
#   idx += 1
#   break if idx == arr.size
# end # Returns nil.

# arr.each do |x|
#   puts x if x > 5
# end # Returns original array.

# Append 12 to the end of array.
arr << 12

# Prepend 0 to beginnning of array

arr.unshift(0)

# Remove the 12 and add a 3

arr.pop
arr << 3

# Remove duplicates using 1 method.

arr.uniq!

# Extract all odd numbers into new array.

odds = arr.select { |x| x.odd?}

# Increment all numbers by 1

incremented = arr.map {|x| x+=1}

p odds
p arr
p incremented

Hash

hsh = {a:1, b:2, c:3, d:4}

# Get the value of "b"
# Can't get the value of "b", only :b

p hsh[:b]

# Add this key/value pair to the hash: {e:5}

hsh[:e] = 5
p hsh

# Iterate over the has and print out the keys and values

hsh.each do |k,v|
  puts "Key is #{k}, value is #{v}"
end

# Print out the key value pairs where the value is less than 3.5

hsh.each do |k,v|
  puts "Key is #{k}, value is #{v}" if v < 3.5
end

# return a new hash where value is less than 3.5

new_hsh = hsh.select do |k,v|
  v < 3.5
end

p new_hsh

# Delete all key/value pairs where value is less than 3.5

hsh.delete_if do |k,v|
  v < 3.5
end

p hsh

=end

######################### Sample RB109d interview test problem # 1 ########################

# Given a string s, reverse the string according to the following rules:

# - All the characters that are not English letters remain in the same position. All the English letters (lowercase or 
# uppercase) should be reversed.
# - Return s after reversing it.

=begin

#PEDAC
P: Understand the problem

Inputs: Strings with alphabetic and non-alphabetic characters
Outputs: A new string with alphabetic characters order reversed
Leave non alphabetical characters in place
reverse all upper or lower case alphabetical characters

E: Examples

"Test1ng-Leet=code-Q!" == "Qedo1ct-eeLg=ntse-T!"
"--__123" == "--__123"

D: Data structure

A: Algorithm
Create an array of alphabetical characters from the string.
iterate over each character in the string starting from the end
  if character is non alphabetical leave it as is and move on to the next
  otherwise, replace that character with the first character in the characters array and remove the character from array
return the new string

C: Code

# This mutates the string, can be changed to be non-mutating by re-assigning string to local method variable and returning that.

def reverse_only_letters!(string)
  aphabetical_characters = string.chars.keep_if { |x| x=~ /[a-zA-Z]/}
  string.length.downto(1) do |index|
    if string[(index - 1)] =~ /[^a-zA-Z]/
      next
    else
      string[(index-1)] = aphabetical_characters.shift
    end
  end
  string
end

p reverse_only_letters("ab-cd") == "dc-ba"
p reverse_only_letters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!"
p reverse_only_letters("--__123") == "--__123"
p reverse_only_letters('hellO') == 'Olleh'

######################## Sample RB109d interview test problem # 2 ########################

# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

PEDAC

P:
Input a string
Output a shorter string
Rules:
substring must be in alphabetical order
substring can have repeating letters
result is the first substring of that length

E:

'nab' == 'ab'
'asdfaaaabbbbcttavvfffffdf' == 'aaaabbbbctt'

D:
Array of string objects

A:

create an array containing all substrings
  create substring from string index 0 to string length
    take each substring and create each substring from each starting letter.
    add substring to substrings array
loop over each substring
  check each substring sequence for alphabetic order
    compare substring characters to substring characters sorted
    if substring is alphabetical, place substring in longest substring variable if it is longer than the current string.

C:

def longest(string)
  substrings = []
  0.upto(string.length) do |index|
    working_string = string[index..-1]
    0.upto(working_string.length) do |length|
      substrings << working_string[0..length]
    end
  end
  longest_substring = ''
  substrings.each do |substring|
    if substring.chars == substring.chars.sort
      longest_substring = substring unless substring.length <= longest_substring.length
    end
  end
  longest_substring
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

=end

# RB 119 Interview, easy example question.

# Write a method that takes in a number and returns a string, placing a dash in between odd digits.

# Problem:
# Input: Integer
# output: String of integers with dashes between odd digits.

# Examples:
# p dasherizer(2112) == '21-12'
# p dasherizer(201105742) == '201-105-742'
# p dasherizer(123456789) == '123456789'
# p dasherizer(21121) == '21-121'

# Data:
# integer -> string -> array of characters -> String

# Algorithm:
# define dasherizer method with a paramter `num`
# convert `num` to a String
# initialize a variable `digits` to the digits of the `num` string.
# initialize a `result` variable to contain digits in an array
# loop over every digit and add them to the result array with odd numbers split by a dash
#   if digits.last is odd and current number is odd
#     digits << '-' << digit
#   else
#     digits << define
#   end
# return the `result` array joined and converted back to a String
# end

# code:

# def dasherizer(num)
#   digits = num.to_s.chars
#   result = []
#   digits.each do |digit|
#     if result.empty?
#       result << digit
#     elsif result.last.to_i.odd? && digit.to_i.odd?
#       result << '-' << digit
#     else
#       result << digit
#     end
#   end
#   result.join('')
# end

# p dasherizer(2112) == '21-12'
# p dasherizer(201105742) == '201-105-742'
# p dasherizer(123456789) == '123456789'
# p dasherizer(21121) == '21-121'

########################## Practice Problems for RB119 Interview ########################## 

# Problem 1)

# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Problem:
# Input: an array of numbers
# output: array of numbers, number being the count of other numbers in the array being smaller than number at that index.
# Rules: 
  # Other number must be less than current number.
  # Only count uniq instances of other numbers.

# Examples:
# smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# smaller_numbers_than_current([1]) == [0]

# Data:
  # Arrays, numbers

# Algorithm:

# loop over each number in the array
  # compare current number against all other numbers in the array
    # all other numbers in the array must be unique
  # if the current compared number is less than the current number, select it
  # return the size of the array returned by select
#end

# Code:

# def smaller_numbers_than_current(array)
#   array.map do |number|
#     array.uniq.select do |comp_num|
#       number > comp_num
#     end.size
#   end
# end

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

# Problem 2)

# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Problem:
# Input: Array of integers
# Output: an integer representing the sum of 5 consecutive integers in the array.
# Rules:
  # sum must be made up of consecutive numbers in the array.
  # sum must be made up of at least 5 numbers
  # if input array doesn't have 5 numbers return nil

# Examples:
# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# Data:
# Array of integers
# returning an integer

# Algorithim:

# define minimum_sum method with an argument `arr`
# check if `arr` is less than 5 elements in length, if it does return `nil`
# create a results array
# create the sum of every 5 consecutive numbers in the array.
#   starting from index 0, up to the length of the array less 5
#     add together all numbers in the array from index to index +5 and return it to a results array
# return the lowest sum number in the results array
# end

# Code:

# def minimum_sum(arr)
#   return nil if arr.size < 5
#   results = [] # Refactor possible to avoid an array and instead just hold a current value to check against.
#   0.upto(arr.size - 5) do |start_index|
#     results << arr[start_index, 5].sum
#   end
#   results.min
# end

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

# Problem 3)

# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Problem:
# Input: a string
# Output: a string with every 3rd words every 2nd character uppercased
# Rules:
  # changes effect every 3rd word in the string
  # changes effect EVERY 2nd character in the word (chars at 2,4,6...)
  # if word is less than 2 characters in length no changes are made.

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# Data:
# a String, split into an array, then returned as a rejoined string.

# Algorithm:

# define `to_weird_case` method which takes an argument `string`
#   initialize `words` array
#   split `string` into words and return them to the `words` array
#   loop over the words in the `words` array, keeping track of their index
#   if the words occurance in the string is divisible by 3 then:
#     split the word in characters
#     loop over characters changing the case of every 2nd character to upper case
#     return modified word back to words array or word if position in string is not a 3rd.
#   join words array back together with space and return the string
# end

# Code:

# def to_weird_case(string)
#   words = string.split
#   words.map!.with_index do |word, idx|
#     if (idx + 1) % 3 == 0
#       word.chars.map!.with_index do |char, idx|
#         (idx + 1) % 2 == 0 ? char.upcase : char
#       end.join('')
#     else
#       word
#     end
#   end
#   words.join(' ')
# end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

# Problem 4)

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Problem:
# Input: Array of integers
# Output: Array of 2 integers closest in value
# Rules:
  # return 2 numbers closest in value
  # numbers do not need to be consecutive
  # Ensure not to compare against itself (as this wold be closest)
  
# Examples:

# ([5, 25, 15, 11, 20]) == [15, 11]
# ([19, 25, 32, 4, 27, 16]) == [25, 27]
# ([12, 7, 17]) == [12, 7]

# Data:
# array of integers, and integers

# Algorithm:

# define `closest_numbers` method which takes an `arr` parameter
#   initalize `current_closest` variable to an empty array
#   loop over each element in the array
#     find distance betweem current element and every other element in the array
#     if the distance is less than the distance between the two elements in the `current_closest` array, or if the
#       array is empty, place the current element and compared element in the `current_closest` array
#   return the current_closest array
# end

# Code:

# def closest_numbers(arr)
#   pair = []
#   arr.each_with_index do |num, idx|
#     (idx + 1).upto(arr.size - 1) do |idx2|
#       if pair.empty?
#         pair = [num, arr[idx2]]
#       elsif ((num - arr[idx2]).abs) < ((pair[0] - pair[1]).abs)
#         pair = [num, arr[idx2]]
#       end
#     end
#   end
#   pair
# end

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

# Problem 5)

# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Problem:
# Input: a string
# output: a string
# rules:
  # uppercase and lowercase characters are the same for occurance count
  # return character that appears first the string if there are lowest occurance count is the same for multiple characters
  # spaces and punctuation count as characters
  # result character should be lowercase

# Examples:

# ("Hello World") #== "h"
# ("Peter Piper picked a peck of pickled peppers") #== "t"
# ("Mississippi") #== "m"
# ("Happy birthday!") #== ' '
# ("aaaaaAAAA") #== 'a'

# Data:
# a string, array of characters, new string

# Algorithm:
# define `least_common_char` method with parameter `string`
#   convert string to downcase
#   initialize `least_common` to and empty string
#   initialize `count` to nil
#   loop over each character in `string`
#     scan `string` for occurances of `character`
#     if `count` is `nil` or if current count is less than `count`
#       set `least_common` to `character`
#       set `count` to `current count`
#     end
#   return `least_common`
# end    

# Code:

# def least_common_char(str)
#   string = str.downcase
#   least_common = ''
#   count = nil
#   string.chars.each do |char|
#     charcount = string.scan(char).size
#     if count == nil || count > charcount
#       least_common = char
#       count = charcount
#     end
#   end
#   least_common
# end

# p least_common_char("Hello World") == "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
# p least_common_char("Mississippi") == "m"
# p least_common_char("Happy birthday!") == ' '
# p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".

############################################################################################################
###################################################### Review ############################################################
############################################################################################################

# 1) (7 minutes)
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Problem:
# Input: array of integers
# Output: array of integers
# Rules:
  # For each integer in given array, count how many unique numbers are less than the current number


# Examples:
# smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# smaller_numbers_than_current([1]) == [0]

# Data:
# arrays, integers

# Algorithm:
# define smaller_numbers_than_current with 1 parameter input
#   initialize `uniques` to uniq numbers in `input`
#   iterate over each number in `input`
#     count and return the occurances of the number in unique being smaller than the current number
# end

# Code:
# def smaller_numbers_than_current(input)
#   uniques = input.uniq
#   input.map do |num|
#     uniques.count {|x| num > x}
#   end
# end

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# 2) (14 minutes)

# Given a string s, reverse the string according to the following rules:

# - All the characters that are not English letters remain in the same position. All the English letters (lowercase or 
# uppercase) should be reversed.
# - Return s after reversing it.

# Problem:
# Input: string
# Output: string
# Rules:
  # Only alphabetical characters are to be moved
  # Case should remain the same
  # mutate the input string

# Examples:
# p reverse_only_letters("ab-cd") == "dc-ba"
# p reverse_only_letters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!"
# p reverse_only_letters("--__123") == "--__123"
# p reverse_only_letters('hellO') == ‘Olleh'

# Data:
# Strings

# Algorithm:
# define reverse_only_letters with 1 parameter `s`
#   initialize `chars` to the characters of input
#   select only the alphabetical characters in chars
#   reverse `chars`
#   iterate over each character in `s`
#     if the character is alphabaetical
#       replace character with the first character in `chars`
#     end
#   return `s`
#   end

# Code:

# def reverse_only_letters(s)
#   chars = s.chars.select {|x| x =~ /[a-zA-Z]/}
#   0.upto(s.length-1) do |idx|
#     if s[idx] =~ /[a-zA-Z]/
#       s[idx] = chars.pop
#     end
#   end
#   s
# end

# p reverse_only_letters("ab-cd") == "dc-ba"
# p reverse_only_letters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!"
# p reverse_only_letters("--__123") == "--__123"
# p reverse_only_letters('hellO') == 'Olleh'

# 3) ( 9 minutes )

# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

# Problem:
# Input: a string
# Output: a string
# Rules:
  # substring must be in alphabetical order
  # if there are mutliple results, return the one that appears first

# Examples:

# Data:
# Strings, arrays

# Algorithm:
# define `longest` method with 1 parameter `input`
#   intialize `longest` to an empty string
#   create all substrings
#     check if characters in substring are equal to characters in substring sorted
#     if they are, check if the current substring is longer than the current `longest` string
#       if it is, assign current substring to `longest`
#   return `substring`
#       End

# Code:

# def longest(input)
#   longest = ""
#   size = input.size
#   0.upto(size - 1) do |idx|
#     1.upto((size) - idx) do |length|
#       substring = input[idx, length]
#       if substring.chars == substring.chars.sort
#         longest = substring if substring.size > longest.size
#       else
#         break
#       end
#     end
#   end
#   longest
# end

# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') ==  'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# 4) ( 7 minutes )

# Write a method that takes in a number and returns a string, placing a dash in between odd digits.

# Problem:
# Input: integer
# Output: string
# Rules:
  # output should return a string
  # output should include a "-" when numbers on either side are odd

# Examples:

# Data:
# integers, strings

# Algorithm:
# define `dasherizer` method with 1 parameter `input`
#   convert `input` to a string
#   initialize "result" to empty string
#   iterate string size times, tracking the `times` as `idx`
#     if number at current idx and index + 1 are both odd
#       append `result` with number at index and "-"
#     else
#       append result with number at index
#     End
#     return result
# end

# Code:

# def dasherizer(input)
#   nums = input.to_s
#   result = ""
#   (nums.size).times do |idx|
#     if nums[idx].to_i.odd? && nums[idx+1].to_i.odd?
#       result << nums[idx] << "-"
#     else
#       result << nums[idx]
#     end
#   end
#   result
# end

# p dasherizer(2112) == '21-12'
# p dasherizer(201105742) == '201-105-742'
# p dasherizer(123456789) == '123456789'
# p dasherizer(21121) == '21-121'

# 5) ( 5 minutes )

# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Problem:
# Input: array of integers
# Output: integer or NilClass
# Rules:
  # sum must be made up of 5 consecutive inteegers
  # if array is less than 5 numbers, return nil

# Example:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# Data:
# Arrays, integers

# Algorithm:

# Option 1)

# define `minimum_sum` method with 1 parameter `input`
# initialize `sums` to an empty array
# create array of 5 consecutive numbers and return its sum to `sums`
# return the minimum value in `sum`

# Option 2)

# define `minimum_sum` method with 1 parameter `input`
#   return nil if input.size < 5
# initialize `sums` to an empty array
#   loop from 0 to size of input less 5, track this as index
#     create sum of sub arrays of `input` 5 elements long starting from index
#     add this to `sums`
#   return the lowest number in `sums`
# end

# Code:
# Option 1)
# def minimum_sum(input)
#   sums = []
#   input.each_cons(5) do |x|
#     sums << x.sum
#   end
#   return nil if sums.empty?
#   sums.min
# end

# Option 2)
# def minimum_sum(input)
#   return nil if input.size < 5
#   sums = []
#   0.upto(input.size - 5) do |start|
#    sums << input[start,5].sum
#   end
#   sums.min
# end

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# 6) (15 minutes)

# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Problem:

# Problem:
# Input: String
# Output: String
# Rules:
  # For every 3rd word in String
    # convert every 2nd character to uppercase
  # all other characters to be left alone.

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS’

# Data:
# Strings, arrays

# Algorithm:

# define `to_weird_case` with 1 parameter `input`
# initialize `words` to the words of input
# iterate over the `words` array tracking index
#   if the index + 1 is divisble by 3
#     if the words length is greater than 1
#       change every 2nd character to uppercase
#   return that word to the `words` array
#   join the `words` array with spaces
#     end

# Code:

# def to_weird_case(input)
#   words = input.split
#   words.map!.with_index do |word, idx|
#     if (idx + 1) % 3 == 0 && word.size > 1
#       chars = word.chars
#       chars.map.with_index do |char, idx|
#         idx.odd? ? char.upcase : char
#       end.join('')
#     else
#       word
#     end
#   end
#   words.join(' ')
# end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# 7) (20 minutes)

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Problem:
# Input: array of integers
# Output: array of integers closest in together in value
# Rules:
  # input array is made up of integers only

# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# Data:
# arrays, integers

# Algorithm:

# define `closest_numbers` with 1 parameter `array`
# initialize `pairs` to empty array
# create all pairs of numbers in `array` and place in `pairs`
# return the minimum pair in pars by sorting hem by their difference
# end

# Code:
# def closest_numbers(array)
#   pairs = array.permutation(2).to_a
#   pairs.min_by do |pair| 
#     diff = (pair[1] - pair[0])
#     diff.abs
#   end
# end

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# Important to keep note of negative values affecting the result of sorting methods like sort, min, max etc...

# 8) (12 minutes)

# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Problem:
# Input: string
# Output: string of 1 character
# Rules:
  # uppercase and lowercase characters count as the same character
  # if tie for least number, return the first character for thar number of instances.
  # returned character should be lowercase

# Examples:

# p least_common_char("Hello World") == "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
# p least_common_char("Mississippi") == "m"
# p least_common_char("Happy birthday!") == ' '
# p least_common_char("aaaaaAAAA") == 'a'

# Data:
# Strings, hashes

# Algorithm:
# define `least_common_char` with 1 parameter `input`
# initialize `counts` to an empty hash
# iterate over the characters in `input`
#   make sure the character is lowercase
#   if the current character is a key in `counts`
#     add 1 to the value
#   otherwise
#     create a new key for the `counts` hash and set the value to 1
# return the key of the lowest value of `counts`
#   end
# Code:

# def least_common_char(input)
#   counts = {}
#   input.chars.each do |x|
#     char = x.downcase
#     if counts.key?(char)
#       counts[char] += 1
#     else
#       counts[char] = 1
#     end
#   end
#   counts.min_by {|k,v| v}.first
# end

# OR:

# def least_common_char(input)
#   text = input.downcase
#   text.chars.min_by {|x| text.count(x)}
# end

# p least_common_char("Hello World") == "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
# p least_common_char("Mississippi") == "m"
# p least_common_char("Happy birthday!") == ' '
# p least_common_char("aaaaaAAAA") == 'a'

########################### Problems from "Watch others code" video series #################################
# Video 1)

# Problem 1)
# Given a non-empty string check if it can be constructed by taking a substring of it and appending mutliple copies of the 
# substring together. You may assume that given string consists of lowercase English letters only.

# Example 1)
# Input: "abab"
# Output: True
# Explanation: It's the substring "ab" twice.

# Problem:
# Input: string
# output: true or false
# rules:
  # substring must repeat itself in `string` to be true
  # string must be equally divisible by `string` length to be possible
# question:
  # is there a minimum length of the substrings? Can it be 1 character? ie: "aa" is "a" eligble?

# Examples:
# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

# Data:
# strings
# arrays

# Algorithm:

# option 1)
# define repeated_substring_pattern method with 1 parameter `string`
#   initialize `substrings` array to contain all of subarray of `string`
#   create all substrings of `string`, stopping at the halfway point of `string`
#     #steps...
#   check if any of the strings in substrings can be multiplied to equal `string`
#   return true if 1 can, false otherwise
# end

# Code:

# def repeated_substring_pattern(string)
#   substrings = []

#   (0..(string.length / 2)).each do |start|
#     (1..(string.length / 2)).each do |length|
#       substrings << string[start, length]
#     end
#   end
#   substrings.any? do |substring|
#     multiplier = string.length / substring.length
#     string == substring*multiplier
#   end
# end


# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

# Problem 2)

# Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings
# within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, 
# you need to include that character three times in the final answer.

# Problem:
# Input: array of strings
# Output is an array of characters as strings.
# Rules:
  # characters must be in all strings.
  # characters can appear in the result more than once, providing they appear in all strings more than once.

# examples:

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p common_chars(['aabbaaaa', 'ccddddddd', 'eeffee', 'ggrrrr', 'yyyzzz']) == []

# Data:
# Strings
# arrays

# Algorithm:
#Ideas: scan and count? chars and delete_at?

# define `common_chars` method with 1 parameter `words`
#   transform all words in the `words` array to arrays of characters
#   initialize `results` array
#   loop over each of the characters in the first word
#   check if that character appears in the all of the words array of characters
#     if it does add character to results array
#       delete that character from each words array of characters 1 time
#   return array of characters
# end

# Code:

# def common_chars(words)
#   charsets = words.map {|word| word.chars}
#   first_chars = charsets.shift
#   results = []
#   first_chars.each do |char|
#     if charsets.all? {|sets| sets.include?(char)}
#       results << char
#       charsets.each do |set|
#         set.delete_at(set.index(char) || set.size)
#       end
#     end
#   end
#   results
# end

#Or

# def common_chars(words)
#   words = words.map {|word| word.dup}

#   chars = words.shift.chars

#   chars.select do |char|
#     words.all? {|word| word.sub!(char, '')}
#   end
# end

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p common_chars(['aabbaaaa', 'ccddddddd', 'eeffee', 'ggrrrr', 'yyyzzz']) == []

# Video 2)

# Problem 1) ( 10 minutes )
# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits.

# 12 -> 21
# 513 -> 531
# 2017 -> 2071
# If no bigger number can be composed using those digits, return -1

# Problem:
# Input: integer
# Output: intger
# Rules:
  # output integer must be next largest number possible with same digits
  # if no larger number is possible return -1
  # 

# Examples:
# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# Data:
# integers

# Algorithm:
# define `next_bigger_num` with 1 parameter `num`
#   initialize `digits` to num.digits
#   initialize `possibilies` to contain all possibile permutations of digits
#   iterates over possibilities to the joined version of the array
#   select all possibilties that are larger than `num`
#   return the mininum in `possibilties`
# end

# Code:

# def next_bigger_num(num)
#   digits = num.digits
#   possibilities = digits.permutation.to_a
#   possibilities.map! { |x| x.join.to_i }
#   possibilities.select! { |x| x > num }
#   return -1 if possibilities.empty?
#   possibilities.min
# end

# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# Alternate solution, loop from input num to max number

# def next_bigger_num(num)
#   max = max_number(num)
#   (num+1..max).each do |x|
#     return x if x.digits.sort == num.digits.sort
#   end
#   return -1
# end

# def max_number(num)
#   num.digits.sort.reverse.join.to_i
# end

# p next_bigger_num(9) == -1
# p next_bigger_num(12) == 21
# p next_bigger_num(513) == 531
# p next_bigger_num(2017) == 2071
# p next_bigger_num(111) == -1
# p next_bigger_num(531) == -1
# p next_bigger_num(123456789) == 123456798

# Video 3)
# Problem 1)
# The maximum sum subarray problem consist in finding the maximum sum of a contiguous subsequence in an array of itnegers.
# When the array is made up of only positive number and the maximum sum is the sum of the whole array. If the array is made
# up of only negative numbers, return 0 instead.
# Empty array is considered to have 0 greatest sum.

# Problem:
# Input: an array
# Output: integer
# Rules:
  # If array is made up of only negative numbers return 0
  # sub array must be made up of continuous numbers

# Examples:

# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 3]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# Data:
# arrays
# numbers

# Algorithm:
# define `max_sequence` method with parameter `numbers`
# check if all numbers in `numbers` are negative
#   return 0 if true
# initialize `results` array to contain subarrays
# loop `numbers` length times, keeping track of iteration number
# loop iteration number less remaining length times
# slice array into sub array using start index and length and append sub array to results
# exit loops

# sort `results` array by the sum of the digits in each subarray and return the sum
# end

# Code:

# def max_sequence(numbers)
#   return 0 if numbers.all? {|num| num < 0 }
#   results = []
#   (0...numbers.length).each do |start_index|
#     (start_index...numbers.length).each do |end_index|
#       results << numbers[start_index..end_index]
#     end
#   end
#   results.max_by {|array| array.sum}.sum
# end

# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 3]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# Problem 2)
# Write out a method to find the longest common prefix string amongst an array of strings.
# If there is no commmon prefix, return an empty string "".
# All given inputs are in lowercase letters a-z.

# Problem:
# input: array of strings
# output: string
# rules:
  # all strings will be lower case
  # if there is not match, return an empty string
  # prefix characters must match all strings in array

# Examples:

# p common_prefix(["flower", "flow", "flight"]) == "fl"
# p common_prefix(["dog", "racecar", "car"]) == ""
# p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# p common_prefix(["throne", "dungeon"]) == ""
# p common_prefix(["throne", "throne"]) == "throne"

# Data:
# array, strings

# Algorithm:
# define common_prefix method with paramter `words`
# loop length of first work in the array times
# compare characters in the first word againt the starting characters of each other string
# if they match, return string
#   otherwise, reduce the length of the string to compare by one character and test again
# return an empty string if nothing is returned by the loop
# end

# Code:

# def common_prefix(words)
#   (words[1].length).downto(0) do |length|
#     return words[0][0,length] if words.all? {|word| words[0][0,length] == word[0,length]}
#   end
#   return ""
# end

# p common_prefix(["flower", "flow", "flight"]) == "fl"
# p common_prefix(["dog", "racecar", "car"]) == ""
# p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
# p common_prefix(["throne", "dungeon"]) == ""
# p common_prefix(["throne", "throne"]) == "throne"

# Video 4)

# Problem 1)
# Given two strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a 
# Substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

#Problem:
# Input: two strings
# output: true or false
# rules:
  # Matching substring must be atleast two characters long
  # Substring must appear in both strings
  # Substring comparison is not case sensitive

# Examples:

# p substring_test("Something", "Fun") == false
# p substring_test("Something", "Home") == true
# p substring_test("Something", "Fun") == false
# p substring_test("Something", '') == false
# p substring_test("", "Something") == false
# p substring_test("BANANA", "banana") == true
# p substring_test("test", "111t") == false
# p substring_test("", "") == false
# p substring_test("1234567", "541265") == true
# p substring_test("supercalifragilisticexpiadlidocious", "SondOfItIsAtrociou") == true

# Data:
# strings
# substrings
# arrays

# Algorithm:

# define substring_test method with two parameters `string1` and `string2`
#   initialize `substrings1` array to contain eligible substrings from `string1`
#   initialize `substrings2` array to contain eligible substrings from `string2`
#   create all 2+ character substrings from `string1`
#   create all 2+ character substrings from `string2`
#   search `substrings2` for any occurance of any substring from `substrin1`
# end

# Code:

# def substring_test(string1, string2)
#   substrings1 = []
#   substrings2 = []
#   (0...string1.length).each do |start|
#     (2..(string1.length - start)).each do |length|
#       substrings1 << string1[start,length].downcase
#     end
#   end
#   (0...string2.length).each do |start|
#     (2..(string2.length - start)).each do |length|
#       substrings2 << string2[start,length].downcase
#     end
#   end
#   substrings1.each do |substring|
#     return true if substrings2.any? {|word| word == substring}
#   end
#   false
# end

# p substring_test("Something", "Fun") == false
# p substring_test("Something", "Home") == true
# p substring_test("Something", "Fun") == false
# p substring_test("Something", '') == false
# p substring_test("", "Something") == false
# p substring_test("BANANA", "banana") == true
# p substring_test("test", "111t") == false
# p substring_test("", "") == false
# p substring_test("1234567", "541265") == true
# p substring_test("supercalifragilisticexpiadlidocious", "SondOfItIsAtrociou") == true

# Problem 2)
# Write a function sramble(str1,str2) that returns true if a portion of str1 characters can be rearranged
# to match str2, otherwise returns false.

# For example:
# Str1 is 'rkqodlw' and str2 is 'world' the output should return true
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true

# Problem:
# input: 2 strings
# output: true or false
# rules:
  # all characters in str2 must be in str1 to return true

#Examples:

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

# Data:
# strings
# arrays of characters

# Algorithm:
# define `scramble` method with two parameters `str1` and `str2`
#   initialize `str1chars` to contain characters found in `str1`
#   initialize `str2chars` to contain characters found in `str2`
#   loop over characters in `str2chars`
#     check if all characters are also in `str1chars`
#       if character is in str1chars, delete that instance of the character so it cant be used for further characters in `str2chars`
#         return the result of all check
#       end

# Code:

# def scramble(str1, str2)
#   str1chars = str1.chars
#   str2chars = str2.chars
#   status = nil
#   str2chars.each do |char|
#     str1chars.include?(char) ? (status = true) : (return false)
#     str1chars.delete_at(str1chars.index(char) || str1chars.length)
#   end
#   status
# end

# Alternatively, ensure count of each char in str2 is equal to or greater than the count of char in str1

# def scramble(str1, str2)
#   str2chars = str2.chars
#   str2chars.all? do |char|
#     str1.count(char) >= str2chars.count(char)
#   end
# end

# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava', 'javascript') == true
# p scramble('scriptingjava', 'javascript') == true

# Video 5)

# Problem 1)
# Find the length of the longest substring in the given string that is the same in reverse.
# As an example, if the input was "I like racecars that go fast", the substring (racecar) length would be 7.
# If the length of the input string is 0, return value must be 0.

# Problem:
# Input: string
# Output: integer representing length of longest reversible substring
# Rules:
  # substring must be the same in reverse
  # if input string is empty return 0

# Examples:

# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baab1kj12345432133d") == 9

# Data:
# strings
# arrays

# Algorithm:
# define longest_palindrome method with 1 parameter `string`
# initialize substrings to an empty array
# create all substrings, but only add them to substrings array if they are reversible
  # loop from first character to last
  # loop from shorted to longest possible length
  # check if substring is equal to substring reverse
    # if it is, return substring to substrings array
# find longest string in substrings array and return it's length

# Code:

# def longest_palindrome(string)
#   substrings = []
#   (0...string.length).each do |index|
#     (1..(string.length - index)).each do |length|
#       substrings << string[index, length] if string[index, length] == string[index, length].reverse
#     end
#   end
#   substrings.max_by {|string| string.length}.size
# end

# p longest_palindrome("a") == 1
# p longest_palindrome("aa") == 2
# p longest_palindrome("baa") == 2
# p longest_palindrome("aab") == 2
# p longest_palindrome("baabcd") == 4
# p longest_palindrome("baab1kj12345432133d") == 9

# Video 6)

# Problem 1)
# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of 
# the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that 
# would make this happen, return -1.

# For example:
# Given [1,2,3,4,3,2,1]
# Your method will return the index 3, because at the 3rd positon of the array, the sumof the left side of the index [1,2,3]
# and the sum of the right side of the index [3,2,1] both equal 6.

#Problem:
# Input: An array of integers
# Output: integer
# Rules:
  # Both sums of numbers before and after index N must be equal.
  # if no sums are equal, return -1
# Questions?
  # what should i do if the array is empty?
  # what should i do if the array is 1 number?

# Examples:

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

# Data:
# array
# integers

# Algorithm:

# define find_even_index with parameter `numbers`
#   initialize `result` to return -1
#   iterate over numbers in array keeping track of index
#   on each iteration, check if the sum of the numbers to the left and right of index are equal
#     if they are equal, reassign `result` to index
#     end
#   return `result`
#   end

# Code:

# def find_even_index(numbers)
#   result = -1

#   numbers.each_with_index do |num, index|
#     if numbers[0..index].sum == numbers[index..-1].sum
#       result = index
#     end
#   end

#   result
# end

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

######################################## RB119 interview study group Questions ########################################

# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# Problem:
# Input: Integer
# ouptut: a string
# Rules:
  # numbers in expanded form should be joined by a `+`

# Examples:

# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# Data:
# Integers
# Strings
# Arrays

# Algorithm:

# Option 1)
# define `expanded_form` method with 1 paramter `num`
# initialize `results` Array
# initialize `numstring` to num converted to a String
# initialize `substrings` Array
# create all trailing substsrings
#   only substring starts with a `0` and if it does don't include in substrings
#   otherwise changed all trailing characters to zero in substring
# join the elements in the results array with (" + ")
# end

# Code:

# Still to work on:

# def expanded_form(num)
#   results = []
#   working_num = num
#   (num.digits.size).times do |num|
#     working_num, mod = working_num.divmod(10)
#     results << mod * (10**num)
#   end
#   results.select {|num| num > 0 }.reverse.join(' + ')
# end

# or:

# def expanded_form(num)
#   digits = num.digits
#   exp_form = []
#   digits.each_with_index do |digit, i|
#     next if digit == 0
#     exp_form.unshift(digit * 10**i)
#   end

#   exp_form.join(' + ')
# end

# p expanded_form(10203) == '10000 + 200 + 3'
# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# Question 2)

# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

# Problem:
# Input: a string
# Output: a modified string
# Rules:
  # replace letter with letter that comes 3 letter after it in the alphabet.
  # alphabet loops around (ie: Z => C)
  # If letter is capitalized, return a capitalized letter.
  # punctuation does not change

# Examples:
# letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# letter_changes("Road trip9") == "Urdg wuls9"
# letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# letter_changes('xyz') == ('abc')

# Data:
# strings
# arrays

# Algorithm:

# define letter_changes method with 1 parameter `input`
#   initialize `alphatbet` array for lowercase alphabet
#   initialize `alphabetup` array for uppercase alphabet
#   initialize `result` string to ''
#   loop over characters in `input`
#     if character is in `alphabet`
#       find index for character in alphabet
#       case statement
#         if index is less than 23 simply return element in alphabet at index + 3
#           if index is 23 return "a"
#           if index is 24 return "b"
#           if index is 25 return "c"
#     if character is in `alphabetup`
#       find index for character in alphabetup
#       case statement
#         if index is less than 23 simply return element in alphabet at index + 3
#           if index is 23 return "A"
#           if index is 24 return "B"
#           if index is 25 return "C"
#     otherwise
#     return character to result
#           End

# Code:

# def letter_changes(input)
#   alphabet = ('a'..'z').to_a
#   alphabetup = ('A'..'Z').to_a
#   result = ''
#   input.chars.each do |char|
#     if alphabet.include?(char)
#       case
#       when alphabet.index(char) == 23 then result << "a"
#       when alphabet.index(char) == 24 then result << "b"
#       when alphabet.index(char) == 25 then result << "c"
#       else result << alphabet[(alphabet.index(char)+3)]
#       end
#     elsif alphabetup.include?(char)
#       case 
#       when alphabetup.index(char) == 23 then result << "A"
#       when alphabetup.index(char) == 24 then result << "B"
#       when alphabetup.index(char) == 25 then result << "C"
#       else result << alphabetup[(alphabetup.index(char)+3)]
#       end
#     else
#       result << char
#     end
#   end
#   result
# end

# p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# p letter_changes("Road trip9") == "Urdg wuls9"
# p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# p letter_changes('xyz') == ('abc')

# <<<<<<<<<<<<<< Try solving with map? !!!!!!!!!!!!!!!!!!!!!!!

#### Review #####

# Question 1) (12 minutes)

# You will be given a number and you will need to return it as a string in expanded form. For example:
#
# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
#
# Note: All numbers will be whole numbers greater than 0.

# Problem:
# Input: integer
# Output: string
# Rules:
  # number to be split on each digit
  # if leading digit is 0, it can be dropped
  # expanded digits to be joined together in returned string by " + "

# Examples:

# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# Data:
# Integers, strings

# Algorithm:

# define `expanded_form` with 1 parameter `num`
#   intialize `digits` to `num`s digits
#   iterate over each element in `digits` with index
#     if digit is 0
#       return ""
#     otherwise
#      return digit as a string, + "0" index times
#     end
#   return the string "(digits joined by " + ")"
# end

# Code:

# def expanded_form(num)
#   digits = num.digits
#   result = []
#   digits.map!.with_index do |dig, index|
#     if dig == 0
#       next
#     else
#       result.unshift(dig.to_s + "0" * index)
#     end
#   end
#   result.join(' + ')
# end

# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
# p expanded_form(70304) == '70000 + 300 + 4'

# Questions 2) ( 12 minutes )

# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

# Problem:
# Input: string
# Output: string
# Rules:
  # if letter is alphabetical, replace it with the character 3 places later in the alphabet
  # leave spaces and punctuation in place
  # modify the string passed in

# Examples:

# letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# letter_changes("Road trip9") == "Urdg wuls9"
# letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# letter_changes('xyz') == ('abc')

# Data:
# Strings, arrays

# Algorithm:
# define `letter_changes` method with parameter `str`
#   iterate over the characters in `str`
#     initialize `num` for the characters `ord` number
#     if the char is not alphabetical
#       return char
#     if the ASCII number of char is either 120, 121, 122, 88, 89, 90
#       replace the character with the characters at num less 23
#     else
#       return the character at num + 3
#     end
#   join characters back together and return
# end

# Code:
# def letter_changes(str)
#   specials = [120, 121, 122, 88, 89, 90]
#   str.chars.map do |char|
#     num = char.ord
#     if char =~ /[^a-zA-Z]/
#       char
#     elsif specials.include?(num)
#       (num - 23).chr
#     else
#       (num + 3).chr
#     end
#   end.join('')
# end

# p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
# p letter_changes("Road trip9") == "Urdg wuls9"
# p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
# p letter_changes('xyz') == ('abc')

############################################ PEDAC Study Session ############################################

# Focus on P, A, and C at this stage in the curriculum.
# Use a template.

# Problem:

# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous subarray for which the sum >= integer.

# Problem:
# Input: array of integers
# Output: integer
# Rules:
#   numbers in sub array must appear consecutively in array
#   sum of numbers must be greater than or equal to given positive integer
#   if sum of all integers in array is not larger than target return 0

# Examples:
# ([2, 3, 1, 2, 4, 3], 7) == 2
# ([1, 10, 5, 2, 7], 9) == 1
# ([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# ([1, 2, 4], 8) == 0

# Data:
# Integers, arrays

# Algorithm:
# define `minSubLength` method with two paramter `array` and `target`
#   return `0` if `array`` sum is less than `target`
#   initialize `subarrays` array to contain valid subarrays
#   create all subarrays
#     return subarray to `subarrays` if subarray sum is greater than or equal to `target`
#   sort subarrays by size of sub array # step isn't needed if returning min
#   return size of min subarray
#   end

# Code:

# def minSubLength(array, target)
#   return 0 if array.sum < target
#   subarrays = []
#   (0...array.length).each do |index|
#     (1..(array.length - index)).each do |length|
#       subarrays << array[index, length] unless array[index, length].sum < target
#     end
#   end
  
#   subarrays.min_by {|arr| arr.size}.size

# end

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

# Problem 2)

# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, 
# a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the
# alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,

# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

# Problem:
# Input: array of strings
# output: array of integers
# Rules:
#   letter counts if it is at the same position in the string as position in the alphabet
#   position is case-insensitive

# Examples:

# (["abode","ABc","xyzD"]) == [4, 3, 1]
# (["abide","ABc","xyz"]) == [4, 3, 0]
# (["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# (["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

# Data:
# Strings, Arrays, integers

# Algorithm:

# define `symm` method with 1 parameter `strings`
#   initialize `alphabet` array to letter in the alphabet
#   iterate over elements in `strings` array
#   initialize `count` variable
#     downcase string
#     iterate over each letter in string, keeping track of the character and  index
#     if the characters index in the alphabet array is the same as the current index, interate count by 1
#   return count to map
#   return array returned by map
# end

# Code:

# def symm(array)
#   alphabet = ('a'..'z').to_a
#   array.map do |string|
#     count = 0
#     string.downcase.chars.each_with_index do |char, idx|
#       if idx == alphabet.index(char)
#         count += 1
#       end
#     end
#     count
#   end
# end

# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

################## Review #################

# Question 1) ( 7 minutes )

# Given an array of n positive integers and a positive integer, find the minimal length of a contiguous
# subarray for which the sum >= integer.

# Problem:
# Input: array, integer
# Output: Integer
# Rules:
  # sum must be made up of continous numers in input array
  # sum mut be equal to or greater than int
  # if none, return 0

# Examples:

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

# Data:
# Arrays, integers

# Algorithm:
# define `minSubLength` method with two parameter `arr` and `num`
#   initialize lengths to an empty array
#   create all subarrays of `arr`
#     if the sum of subarray is equal to or greater than `num`
#       return the size to `result`
#     end
#   end
#   return 0 if lengths is empty
#   otherwise return the min in lengths
# end

# Code:
# def minSubLength(arr, num)
#   lengths = []
#   0.upto(arr.length - 1) do |idx|
#     1.upto(arr.length - idx) do |len|
#       if arr[idx,len].sum >= num
#         lengths << len
#       end
#     end
#   end
#   return 0 if lengths.empty?
#   lengths.min
# end

# p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

# Question 2) (9 minutes)

# Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, 
# a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the
# alphabet, which are positions 4 and 5.

# Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for
# each word. For example,

# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

# Problem:
# Input: array of strings
# Output: array of integers
# Rules:
  # letter must be at the same position in string as place in alphabet to count
  # matches are case inseneitive

# Examples:
# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

# Data:
# Strings, arrays, integers

# Algorithm:

# define `symm` method with 1 paramter `arr`
#   initialize alphabet to a-z
#   iterate over the words in `arr`
#     initialize count to 0
#     iterate over the downcased characters in `word` with index
#       if the index matches the characters index in `alphabet`
#         add 1 to count
#       end
#     end
#     return count
#   end
# end

# Code:

# def symm(arr)
#   alphabet = ("a".."z").to_a
#   arr.map do |word|
#     count = 0
#     word.downcase.chars.each_with_index do |char, idx|
#       count+=1 if idx == alphabet.index(char)
#     end
#     count
#   end
# end

# p symm(["abode","ABc","xyzD"]) == [4, 3, 1]
# p symm(["abide","ABc","xyz"]) == [4, 3, 0]
# p symm(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6, 5, 7]
# p symm(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

################################### Code Wars questions #################################################

# 1) Count Letters in String (https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby)

#  You've to count lowercase letters in a given string and return the letter count in a hash with
#  'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead 
#  of string in Crystal.

# Problem:
# Input: a string
# Output: a hash of symbols and integer counts.
# Rules:
  # input will be lowercase characters
  # hash keys to be character represented as a symbol
  # values to be integers
  # result hash to be sorted alphabetically

# Example:

# letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# Data:
# string
# hash

# Algorithm:

# define letterCount method with paramter `string`
# initialize letters array to all lowercase letter of the alphabet
# initialize results hash
# loop over characters in the letters array
#   scan `string` for current letter
#   create new key/value pair for letter and count unless count is 0
# return results hash
# end

# Code:

# def letterCount(string)
#   letters = ('a'..'z').to_a
#   results = Hash.new
#   letters.each do |letter|
#     count = string.scan(letter).size
#     results[letter.to_sym] = count unless count == 0
#   end
#   results
# end

# p letterCount('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# 2) Find all pairs (https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby)

# You are given array of integers, your task will be to count all pairs in that array and return their count.
# Notes:
# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value
#  is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

# Problem:
# input: array of numbers
# output: integer representing number of pairs
# rules:
  # count each pair only once
  # if array is empty or contains only one value return `0`
  # 

# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4

# Data:
# array of integers
# integer result

# Algorithm:

# define pairs method with parameter `numbers`
# initialize `result` variable to 0
# return `result` if numbers has less than 2 numbers
# loop through the sorted numbers array
#   starting at the second number, check to see if the previous number is the same
#     if the number is the same increment `result` by 1 and skip ahead 2 numbers
#     if the number is NOT the same, increment by 1 number
# return result
# end

# Code:

# def pairs(numbers)
#   numbers = numbers.sort
#   result = 0
#   return result if numbers.size < 2
#   index = 1
#   loop do
#     break if index >= numbers.size
#     if numbers[index] == numbers[(index-1)]
#       result += 1
#       index += 2
#     else
#       index += 1
#     end
#   end
#   result
# end

# Or:

# def pairs(arr)
#   uniques = arr.uniq
#   pairs = 0
#   uniques.each do |x|
#     pairs += arr.count(x)/2
#   end
#   pairs
# end

# p pairs([1, 2, 5, 6, 5, 2]) == 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
# p pairs([1000, 1000]) == 1
# p pairs([]) == 0
# p pairs([54]) == 0

# p pairs([1, 2, 5, 6, 5, 2])  ==  2
# # ...because there are 2 pairs: 2 and 5

# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])  ==  4
# # ...because there are 4 pairs: 2, 20, 6 and 2 (again)

# 3) Return substring instance count (https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby)

# Complete the solution so that it returns the number of times the search_text is found within the full_text.

# Problem:
# Input: two strings, 1) longer string to search, 2) substring to search for
# Output: integer count
# Rules:
  # inferred rules: once character is counted in 1 substring, it does not count for future substrings

# Example:
# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# solution('aaabbbcccc', 'bbb') # should return 1

# Data:
# strings

# Algorithm:

# define `solution` method with two parameters `string` and `search`
#   initialize local variable `results`
#   use `scan` to search `string` for occurances of `search`.
#   return size of returned array by scan to `results`
#   return results
# end

# Code:

# def solution(string, search)
#   results = string.scan(search).size
# end

# Assignment of the result of the expression to `results` in uneccesary in the end, but may improved read-ability?

# p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
# p solution('aaabbbcccc', 'bbb') # should return 1

# 4) Longests Vowel Chain (https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby)

# The vowel substrings in the word `codewarriors` are o,e,a,io. The longest of these has a length of 2. Given a lowercase
# string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest
# vowel substring. Vowels are any of aeiou.

# Problem:
# input: string, lowercase alphabetic characters only and no spaces
# output: integer of the size of the longest substring of input string consisting of only vowels.
# Rules:
  # substring must be made up of only vowels
  # vowels are aeiou

  # examples:
  # "Codewarriors" => 2 (o, e, a, io)

# Examples:
# "codewarriors" => 2
# "suoidea" => 3

# Data:
# strings
# arrays

# Algorithm:

# define `solve` with 1 parameter `string`
#   initialize `substring` array
#   create all vowel only substrings
#   check if all chars in substring are AEIOU

#   sort substring `array` by string length and return the longest length 


# Code:

# def solve(string)
#   substrings = []
#   vowels = %w(a e i o u)

#   (0..string.length).each do |start|
#     (1..(string.length - start)).each do |length|
#       substring = string[start, length]
#       # p substring.chars
#       if substring.chars.all? { |char| vowels.include?(char) }
#         substrings << substring
#       end
#     end
#   end

#   substrings.max_by {|string| string.size}.size
# end

# Or using REGEX

# def solve(string)
#   vowelstrings = string.scan(/[aeiou]*/)
#   vowelstrings.max_by {|string| string.size}.size
# end

# p solve("codewarriors") == 2
# p solve("suoidea") == 3
# p solve("iuuvgheaae") == 4
# p solve("ultrarevolutionariees") == 3
# p solve("strengthlessnesses") == 1
# p solve("cuboideonavicuare") == 2
# p solve("chrononhotonthuooaos") == 5
# p solve("iiihoovaeaaaoougjyaw") == 8

# 5) Non-even substrings (https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/ruby)

# Given a string of integers, return the number of odd-numbered substrings that can be formed.
# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
# solve("1341") = 7. See test cases for more examples.

# Problem:
# Input: a string representation of an integer
# Output: integer
# Rules:
  # number must be odd to count towards total
  # substring number does not need to be unique

# Example:
# p solve("1341") == 7
# p solve("1357") == 0
# p solve("13471") == 2
# p solve("134721") == 3
# p solve("1347231") == 0
# p solve("13472315") == 8

# Data:
# Strings, arrays, and integers.

# Algorithm:

# define `solve` with 1 paramter `number`
# initialize `odd_numbers` array
# create all substrings by looping from index 0 to `number` length
#   then loop from 1 to substring length less index
#   if substring converted to an integer is odd, add to odd_numbers array
# count elements in `odd_numbers` array and return that number

# Code:

# def solve(number)
#   odd_numbers = []

#   (0..number.length).each do |index|
#     (1..(number.length - index)).each do |length|
#       num = number[index, length]
#       odd_numbers << num if num.to_i.odd?
#     end
#   end

#   odd_numbers.size
# end

# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

# 6) Repeated Substring (https://www.codewars.com/kata/5491689aff74b9b292000334/train/ruby)

# For a given nonempty string `s` find a minimum substring `t` and the maximum number `k`, such that the
# entire string `s` is equal to `t` repeated `k` times.

# The input string consists of lowercase latin letters.

# Your function should return :
# an array [t, k] (in Ruby and JavaScript)

# Example #1:

# for string:
# s = "ababab";
# the answer is:
# ("ab", 3)

# Problem:
# Input: a string
# output: an array of a string and int
# Rules:
  # find the shorted substring of the given string that can be multiplied to be equal to the given string
  # Return the substring and the multiplier
  # lowercase letter only in given string

# Examples:
# p solve("ababab") == ["ab", 3]
# p solve("abcde") == ["abcde", 1]

# Data:
# strings, arrays, integers

# Algorithm:

# define `solve` method with 1 parameter `input`
#   initialize `substrings` to an empty array
#   create leading substrings
#     check if created substring is mutliplyable to be equal to `input`
#     if it is, add substring to `substrings` array
#   initialize `result` to empty array
#   sort `substrings` array by string length and return the minimum string to results
#   divide `input` string length by `substring` in `result` and append `result` with the result
# end

# Code:

# def solve(input)
#   substrings = []
#   (1..(input.size)).each do |length|
#     substrings << input[0,length] if (input.length % length == 0) && ((input[0,length] * (input.length / length)) == input)
#   end
#   results = []
#   results << substrings.min_by {|substring| substring.length}
#   results << input.length / (substrings.min_by {|string| string.length}.size)
#   results
# end

# p solve("ababab") == ["ab", 3]
# p solve("abcde") == ["abcde", 1]

# 7) Detect Panagram (https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby)

# A panagram is a sentence that contains every single letter of the alphabet at least once. For example, 
# the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z 
# at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

# Problem:
# input: a string
# output: true or false
# Rules:
  # input string must contain all letters of the alhpabet
  # case is irrelevant

# Examples:
# "The quick brown fox jumps over the lazy dog" == true

# Data:
# Strings, arrays

# Algorithm:

# define `pangram?` method with 1 parameter `input`
#   initialize `alphabet` to an array containing each letter of the alphabet
#   check to see if the input string contains all of the letters in `alphabet`
# end

# Code:

# def pangram?(input)
#   alphabet = ('a'..'z').to_a
#   alphabet.all? do |letter|
#     input.downcase.include?(letter)
#   end
# end

# p pangram?("The quick brown fox jumps over the lazy dog") == true
# p pangram?("This is not a pangram.") == false

# 8) Scramblies (https://www.codewars.com/kata/55c04b4cc56a697bb0000048/train/ruby)

# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged
# to match str2, otherwise returns false.

# Notes:
# Only lower case letters will be used (a-z). No punctuation or digits will be included.
# Performance needs to be considered.

# Problem:
# input: two strings
# output: true or false
# Rules:
  # all characters to make up str2 must be in str1
  # Once a character is used, it can't be used again.

# Examples:

# scramble('rkqodlw', 'world') ==> True
# scramble('cedewaraaossoqqyt', 'codewars') ==> True
# scramble('katas', 'steak') ==> False

# Data:
# Strings and arrays

# Algorithm:

# define `scramble` with two parameters `str1` and `str2`
#   initialize `alphabet` to contain all letters of the alphabet
#   check if the count of each letter in the alphabet in `str2` is equal to or greater than in `str1`
# end

# Code:

# def scramble(str1, str2)
#   ('a'..'z').all? {|letter| str1.count(letter) >= str2.count(letter)}
# end

# p scramble('rkqodlw',           'world'     ) == true
# p scramble('cedewaraaossoqqyt', 'codewars'  ) == true
# p scramble('katas',             'steak'     ) == false
# p scramble('scriptjava',        'javascript') == true
# p scramble('scriptingjava',     'javascript') == true

# s1 = "abcdefghijklmnopqrstuvwxyz" * 100_000
# s2 = "zyxcba" * 90_000
# p scramble(s1, s2) == true

# 9) Multiples of 3 or 5 (https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby)

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. 
# Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.

# Problem:
# input: an integer
# output: an integer
# rules:
  # number must be divisible by 3 or 5 to count towards sum
  # number counts up from 1 (or 3) to 1 less than the given num
  # if number is divisble by 3 and 5, return it only once.
  # if input number is negative, return 0

# examples:
# 10 => 23
# 20 => 78
# 5 => 8

# Data:
# arrays and integers

# Algorithm:
# define `solution` methdo with 1 parameter `num`
#   return 0 if num is less than 0
#   intialize results array
#   loop from 3 to `num` - 1 tracking current iteration
#   if iteration num is divisble by 3 or 5 add to results array

#   return the sum of results array.
# end

# Code:

# def solution(num)
#   return 0 if num < 0
#   results = []
#   3.upto(num-1) do |x|
#     results << x if (x % 3 == 0) || (x % 5 == 0)
#   end
#   results.sum
# end

# p solution(10) == 23
# p solution(20) == 78
# p solution(200) == 9168

# 10) Largest product in a series (https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby)

# Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

# For example:
# greatestProduct("123834539327238239583") // should return 3240
# The input string always has more than five digits.

# Problem:
# input: an integer represented as a strink
# output: integer
# rules:
  # product must be made up of consecutive digits
  # product mud be made up of 5 digits

# examples:
# ("123834539327238239583") == 3240

# Data:
# strings, integers, arrays

# Algorithm:
# define `greatestProduct` method with 1 parameter `input`
#   convert input string to integer
#   initialize `digits` to array of digits from input
#   initialize `products` to an array
#   create each sub array of 5 consecutive numbers and return the product of those numbers to products
#   return the max of products
# end

# Code:

# def greatestProduct(input)
#   digits = input.to_i.digits.reverse
#   products = []
#   digits.each_cons(5) do |x|
#     products << x.inject(:*)
#   end
#   products.max
# end

# p greatestProduct("123834539327238239583") == 3240

# 11) Counting Duplicates (https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby)

# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric 
# digits that occur more than once in the input string. The input string can be assumed to contain only alphabets 
# (both uppercase and lowercase) and numeric digits.

# Example
# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

# Problem:
# Input: a string, made up of upper and lower case letters and numerical digits.
# Output: integer
# Rules:
  # letter must repeat itself in the string to count towards total returned
  # all letters can be treated the same, ie: downcase whole string.
  # return zero if no characters repeat more than once

# Examples:
# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

# Data:
# arrays and strings

# Algorithm:

#Option 1)
# define `duplicate_count` method with 1 parameter `input`
#   downcase input string and reassign to `input`
#   initialize `characters` array to contian downcase alphabet and 0-9 digits as strings
#   initialize count
#   loop over each character in `characters`
#     check if the count of that character is greather than 1 in `input` string
#       if it is, increase count by 1
#   return count
# End

#Option 2)

# define duplicate_count method with 1 paramter input
#   downcase input string and reassign to `input`
#   initialize `charcters` array to acontain downcase alphabet and 0-9 digits as strings
#   call select! on characters, on selecting the character if it appears in the input string 2 or more times
#   return the size of characters array
#       end

# Code:

# Option 1

# def duplicate_count(input)
#   input = input.downcase
#   characters = ('a'..'z').to_a + ('0'..'9').to_a
#   count = 0
#   characters.each do |char|
#     count += 1 if input.count(char) > 1
#   end
#   count
# end

# Option 2

# def duplicate_count(input)
#   input = input.downcase
#   characters = ('a'..'z').to_a + ('0'..'9').to_a
#   characters.select {|char| input.count(char) > 1}.size
# end

# p duplicate_count("") == 0
# p duplicate_count("abcde") == 0
# p duplicate_count("abcdeaa") == 1
# p duplicate_count("abcdeaB") == 2
# p duplicate_count("Indivisibilities") == 2

# 12) Transform to Prime (https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby)

# Problem: Find the smallest number need to be added to the sum of the array of numbers to get to the closest prime number
# A prime number is a number that can not be equally devided by any number other than itself.
# Input: array of numbers
# Output: integer
# Rules:
  # List size will be atleast 2 numbers
  # if the exisitng sum of numbers is a prime number return 0
  # 

# Examples:

# p minimum_number([3,1,2]) == 1
# p minimum_number([5,2]) == 0
# p minimum_number([1,1,1]) == 0
# p minimum_number([2,12,8,4,6]) == 5
# p minimum_number([50,39,49,6,17,28]) == 2

# Data:
# Arrays and integers

# Algorithm:

# define `minimum_number` method which takes 1 parameter `input`
#   find the sum of the input array and assign it to `sum`
#   loop from 0 to sum
#   add loop iteration number to sum and check if if number is prime
#     if number is now prime, return loop iteration
#     end


# Code:

# Could also require "prime" and use that to check.

# def isprime?(num)
#   return false if num <= 1
#   (2..Math.sqrt(num)).none? {|i| (num % i).zero?}
# end

# def minimum_number(input)
#   sum = input.sum
#   0.upto(sum) do |num|
#     if isprime?(sum + num)
#       return num
#     end
#   end
# end

# p minimum_number([3,1,2]) == 1
# p minimum_number([5,2]) == 0
# p minimum_number([1,1,1]) == 0
# p minimum_number([2,12,8,4,6]) == 5
# p minimum_number([50,39,49,6,17,28]) == 2

# 13) Equal Side Of An Array (https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby)

# You are going to be given an array of integers. Your job is to take that array and find an index N where 
# the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there 
# is no index that would make this happen, return -1.

# Problem:
# Input: array of integers
# Output: integer representation of an index
# Rules:
  # equal sizes of the array from given index must sum to equal
  # index will be included on left and right side comparison
  # if there is no index where this occurs, return -1

# Examples:
# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index(Array(1..100)) == -1
# p find_even_index([0,0,0,0,0]) == 0
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# p find_even_index(Array(-100..-1)) == -1

# Data:
# Arrays, integers

# Algorithm:

# define `find_even_index` method with 1 paramter `input`
#   initialize `result` to -1
#   loop from 0 to index size tracking start index
#     check if input sum from start up to index is equal to input sum from index to end
#       if it is, return current index
#       end
#     end
#     return result
#   end

# Code:

# def find_even_index(input)
#   result = -1
#   (0..(input.size)).each do |index|
#     if input[0..index].sum == input[index..-1].sum
#       return index
#     end
#   end
#   result
# end

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index(Array(1..100)) == -1
# p find_even_index([0,0,0,0,0]) == 0
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
# p find_even_index(Array(-100..-1)) == -1

# 14) Find the odd int (https://www.codewars.com/kata/54da5a58ea159efa38000836/train/ruby)

# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

# Problem:
# Input: array of intgers
# Output: integer
# Rules:
  # integer must appear in array an odd number of times
  # only one integer will fit the criteria
  # integers can be positive or negative

# Examples:
# p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
# p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
# p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
# p find_it([10]) == 10
# p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

# Data:
# Arrays, integers

# Algorithm:
# define `find_it` method with 1 paramter `input`
#   iterate over each element in `input`
#   count occurances of element in `input`, if count is odd, return element
# end

# Code:

# def find_it(input)
#   input.each do |num|
#     return num if input.count(num).odd?
#   end
# end


# p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
# p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
# p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
# p find_it([10]) == 10
# p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

# 15) Find the unique number (https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/ruby)

# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains at least 3 numbers.

# The tests contain some very huge arrays, so think about performance.

# Problem:
# Input: array of integers
# Output: element which appears only once in array
# Rules:
  # array can be made up of integers or floats
  # arrays will always contain at least 3 numbers
  # arrays will only be made up of 2 different numbers

# Examples:

# p find_uniq([1,1,1,1,0]) == 0
# p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

# Data:
# arrays, floats and integers

# Algorithm:

# define `find_uniq` with 1 parameter `input`
#   intiailize uniques to the unique digits in `input`
#   iterate over each element in `uniques`
#     check if element only appears in `input` array once
#       if it does, return that element
#       end
#     end
#   end
# end

# Code:

# def find_uniq(input)
#   uniques = input.uniq
#   uniques.each do |element|
#     return element if input.count(element) == 1
#   end
# end

# p find_uniq([1,1,1,1,0]) == 0
# p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

# 16) Are they the "same"? (https://www.codewars.com/kata/550498447451fbbd7600041c/train/ruby)

# Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the 
# two arrays have the "same" elements, with the same multiplicities (the multiplicity of a member is 
# the number of times it appears). "Same" means, here, that the elements in b are the elements in a 
# squared, regardless of the order.

# Problem:
# Input: two arrays
# Output: true or false
# Rules:
  # arrays are equal if each element in array `a` squared, appear in array `b`
  # both arrays must have the same number of elements to be equal
  # 

# Example:
# comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true

# Data:
# arrays, integers

# Algorithm:
# define `comp` method with two paramters `ar1` and `ar2`
#   rule out unequal length arrays to return false
#   initialize `sorted1` to the sorted array of the result of squareing each number in ar1
#   initialize `sorted2` to `ar2` sorted
#   check if `sorted1` is equal to `sorted2`
# end

# Code:
# def comp(ar1, ar2)
#   return false if ar1 == nil || ar2 == nil unless ar1 == nil && ar2 == nil
#   return false if (ar1.size != ar2.size)
#   sorted1 = ar1.map {|num| num**2}.sort
#   sorted2 = ar2.sort
#   sorted1 == sorted2
# end

# p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true

# 17) Sum of Pairs (https://www.codewars.com/kata/54d81488b981293527000c8f/train/ruby)

# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order 
# of appearance that add up to form the sum.

# If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.

# Problem:
# Input: array of integers and a an integer
# Output: array of two numbers
# Rules:
  # sum of two numbers must equal the given integer
  # return the first instance where this is true. ie: start from indexes 0 and 1, continue on.
  # if there are no pairs that result in sum, return nil
  # Pair does not need to be next to each other in input array

# Exampes:

# p sum_pairs([1, 4, 8, 7, 3, 15], 8) == [1, 7]
# p sum_pairs([1, -2, 3, 0, -6, 1], -6) == [0, -6]
# p sum_pairs([20, -13, 40], -7) == nil
# p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]
# p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
# p sum_pairs([4, -2, 3, 3, 4], 8) == [4, 4]
# p sum_pairs([0, 2, 0], 0) == [0, 0]
# p sum_pairs([5, 9, 13, -3], 10) == [13, -3]

# Data:
# Arrays, integers

# Algorithm:
# define `sum_pairs` method with two parameters, `input` and `target`
# iterate over each number of numbers in `input`
#   iterate over the remaining numbers in `input`
#   add two numbers together, check if they equal target
#   if they do, return that pair, otherwise move on
#   end

#Algorithm:

# define `sum_pairs` method with two parameters, `input` and `target`
#   create pairs of numbers, with as low of an index as possible???
    
#   check if pairs sum is equal to target
#   return pair
# end


# Code:

# Works but too slow to pass extended tests
# def sum_pairs(input, target)
#   valid_pairs = []
#   input.each_with_index do |num1, idx|
#     ((idx+1)..(input.size-1)).each do |idx2|
#       pair = [num1, input[idx2]]
#       valid_pairs << pair if pair.sum == target
#     end
#   end
#   return nil if valid_pairs.empty?
#   valid_pairs.min_by {|pair| pair.min_by{|numbers| input.index(numbers)}}
# end

# require 'benchmark'

# Solution works! Very fast with the skips check.

# def sum_pairs(input, target)
#   # time = Benchmark.measure {
#   valid_pairs = []
#   skips = []
#   (1..input.length-1).each do |idx|
#     num2 = input[idx]
#     next if skips.include?(num2)
#     skips << num2 if input.none? {|num| num + num2 == target}
#     (0...idx).each do |index2|
#       return valid_pairs[0] if valid_pairs.empty? == false
#       num1 = input[index2]
#       valid_pairs << [num1, num2] if num1 + num2 == target
#     end
#   end
#   p skips
#   valid_pairs[0]
# # }
# # puts time.real
# end

# l1 = ([0,0,0]*10000 + [1,2])

# p sum_pairs(l1, 3)

# p sum_pairs([1, 4, 8, 7, 3, 15], 8) == [1, 7]
# p sum_pairs([1, -2, 3, 0, -6, 1], -6) == [0, -6]
# p sum_pairs([20, -13, 40], -7) == nil
# p sum_pairs([1, 2, 3, 4, 1, 0], 2) == [1, 1]
# p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]
# p sum_pairs([4, -2, 3, 3, 4], 8) == [4, 4]
# p sum_pairs([0, 2, 0], 0) == [0, 0]
# p sum_pairs([5, 9, 13, -3], 10) == [13, -3]

# 18) Grouping and counting (https://www.codewars.com/kata/53a452dd0064085711001205/train/ruby)

# Your goal is to write the group_and_count method, which should receive and array as unique parameter 
# and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain
# as keys the unique values of the array, and as values the counting of each value.

# Problem:
# Input: an array of integers
# Output: a hash, integers as keys, and count of integer in array as values
# Rules:
  # Array#count and Array#length disabled.
  # if input is empty return nil
  

# examples:
# group_and_count([0,1,1,0]) == {0=>2, 1=>2}

# Data:
# Integers, arrays, hashes

# Algorithm:
# define `group_and_count` method with paramter `input`
#   return `nil` if input is empty
#   initialize results hash
#   iterate over uniq values in `input` array
#     create new key in `results` hash for given integer
#       intialize `count` to 0
#       loop over input array and check if element is equal to given char
#         increase count by 1
#       assign count to value of key
#   return results hash
# end

# Code:

# def group_and_count(input)
#   return nil if input == nil || input.empty?
#   results = {}
#   input.uniq.each do |num|
#     count = 0
#     input.each do |comp|
#       count += 1 if comp == num
#     end
#     results[num] = count
#   end
#   results
# end

# p group_and_count([0,1,1,0]) == {0=>2, 1=>2}

# 19) WeIrD StRiNg CaSe (https://www.codewars.com/kata/52b757663a95b11b3d00062d/train/ruby)

# Write a function weirdCase that accepts a string, and returns the same string with all
#  even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. 
#  The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be 
#  upper cased and you need to start over for each word.

# The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present 
# if there are multiple words. Words will be separated by a single space(' ').

# Problem:
# Input: a string
# Output: string
# Rules:
  # Every word starts it's own index. First char == index 0
  # Every character at an even index must be upper case, otherweise lowercased.

# Examples:
# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

# Data:
# Strings and Arrays

# Algorithm:
# define `weirdCase` method with 1 parameter `input`
# initialize `result` to an empty string
# loop over each character in `input` tracking index
#   if index is even
#     append that character uppercased
#   otherwise
#     append that character downcased
# return result string
#   End

# Code:

# def weirdcase(input)
#   input.split.map do |word|
#     word.chars.map.with_index do |char, idx|
#       if idx % 2 == 0
#         char.upcase
#       else
#         char.downcase
#       end
#     end.join('')
#   end.join(' ')
# end

# p weirdcase( "String" ) == "StRiNg"
# p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"

# 20) Typoglycemia Generator (https://www.codewars.com/kata/55953e906851cf2441000032/train/ruby)

# There is a message that is circulating via public media that claims a reader can easily read a message where
#  the inner letters of each words is scrambled, as long as the first and last letters remain the same and the
#   word contains all the letters.

# In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed
# , ours will be sorted alphabetically

# Requirement
# return a string where:

# 1) the first and last characters remain in original place for each word
# 2) characters between the first and last characters must be sorted alphabetically
# 3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

# Assumptions
# 1) words are seperated by single spaces
# 2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
# 3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
# 3) for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
# 5) ignore capitalisation

# Problem:
# Input: string
# Output: string
# Rules:
  # first and last character of each word remain in the same position
  # middle characters sorted alphabettically
  # punctuation should remain in the same place
  # if first letter is non-alphabetical, maintain place of second letter.
  # if input string length is 3 characters or less return original string

# Examples:

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

# Data:

# Algorithm:
# define `scramble_words` method with 1 paramter `input`
#   return `input` if input length is 3 or less
#   intialize words to the seperate words of `input`
#   loop over words in `words` array
#     scramble inside characters of the word according to the criteria
#       if word length is less than 3 return word
#       create an array of the characters in `words`
#       check if the first character is alphabetical, if it is report that index + 1 to start
#       check if the last character is alphabetical, if it is reprot htat index to end
#       shuffle the remaining characters and return to "shuffle"
#       recreate the word starting from start index to end index with letter in shuffle, check to make sure the current character is alphabetical

#   join words in words array with a space
# end

# Code:

# def scramble_words(input)
#   return input if input.size <= 3
#   words = input.split
#   words.map do |word|
#     if word.size <= 3
#       word
#     else
#       start = nil
#       finish = nil
#       (0..word.length).each do |index|
#         start = (index + 1) if ('a'..'z').include?(word[index])
#         break if start != nil
#       end
#       -1.downto(-10) do |index|
#         finish = index if ('a'..'z').include?(word[index])
#         break if finish != nil
#       end
      
#       shuffled = word.chars[start...finish].sort.select {|char| ('a'..'z').include?(char)}
#       word.chars.map.with_index do |char, idx|
#         if idx < start
#           char
#         elsif ('a'..'z').include?(char) == false
#           char
#         elsif shuffled.empty?
#           char
#         else
#           word[idx] = shuffled.shift
#         end
#       end.join('')
#     end
#   end.join(' ')
# end


# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words('card-carrying') == 'caac-dinrrryg'
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

# 21) Most frequently used words in a text (https://www.codewars.com/kata/51e056fe544cf36c410000fb/train/ruby)

# Write a function that, given a string of text (possibly with punctuation and line-breaks), returns an array 
# of the top-3 most occurring words, in descending order of the number of occurrences.

# Assumptions:
# 1) A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
# 2) Apostrophes can appear at the start, middle or end of a word ('abc, abc', 'abc', ab'c are all valid)
# 3) Any other characters (e.g. #, \, / , . ...) are not part of a word and should be treated as whitespace.
# 4) Matches should be case-insensitive, and the words in the result should be lowercased.
# 5) Ties may be broken arbitrarily.
# 6) If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, 
# or an empty array if a text contains no words.

# Problem:
# Input: A string
# Output: array 3 most commonly appearing words
# Rules:
  # words are split on spaces
  # matches are case incensitve
  # if text have fewer than 3 unique word, return top 2 or top 1 word

# Examples:
# p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]

# Data:
# Strings, arrays

# Algorithm:
# define `top_3_words` method with 1 paramter `input`
#   split input into an array of words
#   create a results hash
#   for each unique word in the array
#     count how many times that word occurs in the words array
#     return the count as key, and word as value to the results hash
#   sort the hash by the key (count) value
#   return the first three values of the results hash
#   end

# Code:

# def top_3_words(input)
#   words = input.downcase.chars.select{|char| (('a'..'z').to_a + [" "]+ ["'"]).include?(char)}.join
#   words = words.downcase.split(' ')
#   results = {}
#   words.uniq.each do |word|
#     next if word.chars.all? {|char| char == "'"}
#     num = words.count(word)
#     results[word] = num
#   end
#   results.sort_by { |k, v| v}.reverse.to_h.keys.first(3)
# end

# p top_3_words("  '''  ") == []
# p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]


# def top_3_words(input)
#   input.scan(/[A-Za-z']+/) # scans for instances of groups of letters and apostrophes, returns array
#        .select {|x| /[A-Za-z]+/ =~ x} #ensure word isn't only made up of non-alphabetical characters? returns array
#        .group_by { |x| x.downcase } # Returns a hash of key (word) and value (instances of word)
#        .sort_by { |k,v| -v.count } # Sorts hash by count of words in value, from most to least. Return sorted ARRAY
#        .first(3) # returns first 3 elements of sorted array
#        .map(&:first) # returns first element for each of the 3 multi dimensial arrays. First element is one occurance of the word
# end

# p top_3_words("  '''  ") #== []
# p top_3_words("a a a  b  c c  d d d d  e e e e e") #== ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") #== ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") #== ["won't", "wont"]

# 22) Longest alphabetical substring

# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# There are tests with strings up to 10 000 characters long so your code will need to be efficient.
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

# Problem:
# Input: String
# Output: string
# Rules:
  # characters in substring must be in alphabetical order
  # if there are multiple results of the same length, return first occurance
  # input will only be lowercase letters

# Examples:
# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# Data:

# Alogrithm:
# Define `longest` method with 1 parameter `input`
#   initialize result to an empty string
#   loop from 0 to string length
#     loop from 0 to string length - index
#     check if chars in that substring are equal to chars in that substrings sorted
#     if they are, if current substring length is longer than result length assign to result
#     end
#     return result


# Code:

# Passes but not fast enough
# def longest(input)
#   result = ''
#   (0..(input.length)).each do |index|
#     (1..(input.length - index)).each do |length|
#       break if 
#       substring = input[index, length]
#       characters = substring.chars
#       if characters == characters.sort && substring.size > result.size
#         result = substring
#       end
#     end
#   end
#   result
# end

# Works and is faster. stops iterating over characters as soon as substring starts with anything out of order.
# def longest(input)
#   result = ''
#   (0..(input.length)).each do |index|
#     (1..(input.length - index)).each do |length|
#       substring = input[index, length]
#       characters = substring.chars
#       if characters == characters.sort
#         result = substring if substring.size > result.size
#       else
#         break
#       end
#     end
#   end
#   result
# end

# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') == 'fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

# 23) The Hashtag Generator (https://www.codewars.com/kata/52449b062fb80683ec000024)

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.

# Problem:
# Input: string
# Output: string
# Rules:
  # Returned string must start with a #
  # Return string must not be any longer than 140 characters in length including the hashtag, if it is return false
  # If input is empty, return false
  # Output string should not have any spaces
  # Each word should be capitalized

# Examples:
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false

# Data:
# Strings
# Arrays

# Algorithm:

# define `generateHashtag` method with 1 parameter `input`
#   initialize words to input split
#   if words is empty return false
#   iterate over words capitalizing each word
#   intialize results string to "#"
#   append joint words array to results
#   check if results is longer than 140 characters, if it is return false
#   returnr results
#   end

# Code:

# def generateHashtag(input)
#   words = input.split
#   return false if words.empty?
#   words.map! {|word| word.capitalize}
#   results = '#' << words.join('')
#   return false if results.size > 140
#   results
# end

# p generateHashtag("") == false
# p generateHashtag(" " * 200) == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars") == "#Codewars"
# p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false

# 24) Pete, the baker (https://www.codewars.com/kata/525c65e51bf619685c000059/train/ruby) (13 minutes)

# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good
# in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object)
# and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for
# the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present
# in the objects, can be considered as 0.

# Problem:
# Input: 2 hashes
# Output: integer
# Rules:
  # recipe ingredient must be availalbe in available ingredients
  # maximum number of times the recipe can be made is the lowest number of of all ingredients
  # if ingredient is not present, return 0

# Examples:
# // must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
# // must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 

# Data:
# Hashes, integers

# Algorithm:
# define `cakes` method with 2 parameters `recipe` and `ingredients`
#   initialize `quantity` variable
#   iterate over each recipe ingredient
#     check if you have the ingredient in available ingredients
#     if you don't, return 0 to quantity
#     if you do, check how many times you can use that ingredient
#     if the number of times is less than the current number of times in `quantity` assign it to quantity
#   return quantity
#     end

# Code:

# def cakes(recipe, ingredients)
#   num = 100
#   recipe.each do |item, quantity|
#     if ingredients.has_key?(item)
#       times = ingredients[item] / quantity
#       num = times unless times > num
#     else
#       num = 0
#     end
#   end
#   num
# end

# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
# p cakes({"eggs"=>4, "flour"=>400},{}) == 0
# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

# 25) Mean Square Error (https://www.codewars.com/kata/51edd51599a189fe7f000015/train/ruby) ( 10 Minutes )

# Complete the function that

# accepts two integer arrays of equal length
# compares the value each member in one array to the corresponding member in the other
# squares the absolute value difference between those two values
# and returns the average of those squared absolute value difference between each member pair.

# Rules:
# Input: 2 arrays of integers
# Output: integer
# Rules:
  # find difference between integer at index in first array vs second array
  # 

# Examples:
# [1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
# [10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
# [-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

# Data:
# Arrays, Integers

# Algorithm:
# define `solution` method with 2 paramters `ar1` and `ar2`
#   initialize `results` to an empty array
#   iterate over each number in `ar1`, tracking index
#     subtract current number from number at ar2[current index]
#     return the absolute value to results
#   iterate over numbers in results
#     reassign the number to the value of the number * number
#   return the average of the results array
# end

# Code:

# def solution(ar1, ar2)
#   results = []
#   ar1.each_with_index do |num, index|
#     results << (ar2[index].to_f - num).abs # .to_f to account for float numbers.
#   end
#   results.map! do |num|
#     num * num
#   end
#   results.sum / results.size
# end

# p solution([1, 2, 3], [4, 5, 6]) == 9
# p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
# p solution([-1, 0], [0, -1]) == 1

# 26) Exponenent Method (https://www.codewars.com/kata/5251f63bdc71af49250002d8) (13 minutes)

# Create a method called "power" that takes two integers and returns the value of the first
#  argument raised to the power of the second. Return nil if the second argument is negative.

# Note: The ** operator has been disabled.

# Problem:
# Input: integer
# Output: integer
# Rules:
  # if exponenent is negative return nil
  # can't use ** method

# Examples:
# power(2, 3) # 8
# power(10, 0) # 1
# power(-5, 3) # -125
# power(-4, 2) # 16

# Data:
# Integers, arrays

# Algorithm:

# define `power` method with two parameters `num` and `exp`
#   check if `exp` is negative, return nil if it is
#   create a `numbers` array
#   add `num` to the `numbers` array `exp` times
#   multiply all of the numbers in `numbers` array together and return that result
# end

# Code:
# def power(num, exp)
#   return nil if exp < 0
#   return 1 if exp == 0 # Second condition need to account for `0` exp
#   numbers = []
#   exp.times { |_| numbers << num }
#   numbers.inject(:*)
# end

# p power(2, 3) # 8
# p power(10, 0) # 1
# p power(-5, 3) # -125
# p power(-4, 2) # 16

# 27) Where my anagrams at? (https://www.codewars.com/kata/523a86aa4230ebb5420001e1) ( 5 minutes)

# Write a function that will find all the anagrams of a word from a list. You will be given
#  two inputs a word and an array with words. You should return an array of all the anagrams
#   or an empty array if there are none.

# Problem:
# Input: a string, and an array of strings
# Output: an array of string
# Rules:
  # selected words must contain the same letters as the given string
  # if no matches are found, return an empty array

# Examples:
# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']
# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []

# Data:
# Strings, arrays

# Algorithm:
# define `anagrams` method with two paramters `word` and `arr`
#   initialized `sorted` to the characters of the `word` string sorted
#   select the words from `arr` whose characters sorted match the ones in `sorted`
# end

# Code:
# def anagrams(word, arr)
#   sorted = word.chars.sort
#   arr.select { |word| word.chars.sort == sorted}
# end

# p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
# p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
# p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []

# 28) Split Strings (https://www.codewars.com/kata/515de9ae9dcfc28eb6000001) ( 10 minutes )

# Complete the solution so that it splits the string into pairs of two characters. If the string 
# contains an odd number of characters then it should replace the missing second character of the 
# final pair with an underscore ('_').

# Problem:
# Input: a string
# Output: an array of strings
# Rules:
  # split string into two character long strings
  # if string length is odd, add an underscore to the last pair

# Examples:

# * 'abc' =>  ['ab', 'c_']
# * 'abcdef' => ['ab', 'cd', 'ef']

# Data:
# Strings, arrays

# Algorithm:
# define `solution` method with a parameter `input`
#   check if the string length is odd, and if it is, append the string with a '_'
#   create `results` array
#   until the string is empty
#     destructively append the first two characters of the string to the results array
#   end
#   return the results array
# end

# Code:

# def solution(str)
#   input = str.dup # needed to not mutate the input string
#   input << "_" if input.size.odd?
#   results = []
#   until input.empty?
#     results << input.slice!(0,2)
#   end
#   results
# end

# p solution("abcdef") == ["ab", "cd", "ef"]
# p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
# p solution("") == []

# 29) Anagrams difference (https://www.codewars.com/kata/5b1b27c8f60e99a467000041) ( 23 minutes)

# Given two words, how many letters do you have to remove from them to make them anagrams?
# Input: two strings
# Output: integer
# Rules:
  # character must appear in both words to not be removed

#Example
# First word : c od e w ar s (4 letters removed)
# Second word : ha c k er r a nk (6 letters removed)
# Result : 10

# Data:
# Strings, integers, arrays

# Alogrithm:
# define `anagram_difference` method with two parameter `str1` and `str2`
#   initialize chars array to an empty array
#   initialize char1 to str1.chars
#   iterate over the characters in `str1`
#     initialize char2 to str2.chars
#     if character appears in char2
#       remove that instance of the character from char2
#       if it doens't appear
#       add the character to chars
# repeat for second string

#   end

# Code:

# def anagram_difference(str1, str2)
#   chars = []
#   char2 = str2.chars
#   char1 = str1.chars
#   str1.chars.each do |char|
#     if char2.include?(char)
#       char2.delete_at (char2.index(char) || char2.length )
#     else
#       chars << char
#     end
#   end
#   str2.chars.each do |char|
#     if char1.include?(char)
#       char1.delete_at (char1.index(char) || char1.length )
#     else
#       chars << char
#     end
#   end
#   chars.size
# end

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
# p anagram_difference('codewars', 'hackerrank') == 10

# 30) Anagram Detection (https://www.codewars.com/kata/529eef7a9194e0cbc1000255) ( 4 minutes )

# Problem:
# Input: two strings
# Output: true or false
# Rules:
  # the two strings must contain the same characters
  # comparison should be done case insensitive

# Examples:
#  p is_anagram('Creative', 'Reactive') == true
#  p is_anagram("foefet", "toffee") == true
#  p is_anagram("Buckethead", "DeathCubeK") == true
#  p is_anagram("Twoo", "WooT") == true
#  p is_anagram("dumble", "bumble") == false
#  p is_anagram("ound", "round") == false
#  p is_anagram("apple", "pale") == false

# Data:
# Strings, arrays

# Algorithm:
# define `is_anagram` method with 2 parameters `str` and `comp`
#   compare the sorted characters of str against comp
# end

# Code:

# def is_anagram(str, comp)
#   str.downcase.chars.sort == comp.downcase.chars.sort
# end

#  p is_anagram('Creative', 'Reactive') == true
#  p is_anagram("foefet", "toffee") == true
#  p is_anagram("Buckethead", "DeathCubeK") == true
#  p is_anagram("Twoo", "WooT") == true
#  p is_anagram("dumble", "bumble") == false
#  p is_anagram("ound", "round") == false
#  p is_anagram("apple", "pale") == false

# 31) Highest Scoring Word (https://www.codewars.com/kata/57eb8fcdf670e99d9b000272) ( 12 minutes )

# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
# For example, the score of abad is 8 (1 + 2 + 1 + 4).
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the original string.
# All letters will be lowercase and all inputs will be valid.

# Problem:
# Input: a string wth mutlitple words
# Output: string
# Rules:
  # words are given scores based on the position of each letter in the alphabet
  # all letter are lowercase
  # if there's a tie, return the first word that has that score

# examples:
# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aa b') == 'aa'
# p high('b aa') == 'b'
# p high('bb d') == 'bb'
# p high('d bb') == 'd'
# p high('aaa b') == 'aaa'

# Data:
# Strings, arrays

# Algorithm:

# define `high` with 1 paramter `input`
#   initalize `words` to contain the individual words in `input`
#   intialize `alphabet` to an array containing 'a'..'z' and add a spacer to the front of the array
#   iterate over the words in `words`
#     for each word, seperate the word into characters
#       intialize score
#       add each index of character in alphabet to the score
#       return score
#     end
#   find the first index of the highest number in scores
#   return the word at that index in words
# end

# Code:

# def high(input)
#   words = input.split
#   alphabet = [" "] + (('a'..'z').to_a)
#   scores = words.map do |word|
#     score = 0
#     word.chars.each { |char| score += alphabet.index(char) }
#     score
#   end
#   words[scores.index(scores.max)]
# end

# p high('man i need a taxi up to ubud') == 'taxi'
# p high('what time are we climbing up the volcano') == 'volcano'
# p high('take me to semynak') == 'semynak'
# p high('aa b') == 'aa'
# p high('b aa') == 'b'
# p high('bb d') == 'bb'
# p high('d bb') == 'd'
# p high('aaa b') == 'aaa'

# 32) Replace With Alphabet Position (https://www.codewars.com/kata/546f922b54af40e1e90001da) ( 8 minutes )

# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# "a" = 1, "b" = 2, etc.
# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )

# Problem:
# Input: a string
# Output: a sting made up of numbers representing that characters index in the alphabet
# Rules:
  # Case should be ignored
  # non-alphabetical characters should be ignored

# Examples:
# p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") == ""

# Data:
# Strings

# Algorithm:
# define `alphabet position` method with 1 parameter `input`
#   initialize `result` to an empty array
#   interate over a downcased version of inputs characters
#     check if the character is alphabetical
#       if it is, append `result` with the characters ord number minus 96 converted to a string
#       end
#       return results joined spaces
#     end

# Code:

# def alphabet_position(input)
#   results = []
#   input.downcase.chars.each do |char|
#     ('a'..'z').include?(char) ? results << (char.ord - 96).to_s : next
#   end
#   results.join(' ')
# end

# p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
# p alphabet_position("-.-'") == ""

# 33) Sherlock on pockets (https://www.codewars.com/kata/53bb1201392478fefc000746) ( 18 minutes )

# Problem:
# Input: pockets or suspects, and array of numbers
# Output: :keys
# Rules:
  # select key (name) if pockets contain items not in allowed items list
  # return nil if no suspects are found

# Examples:
# find_suspects(pockets, [1, 2]) # => [:tom, :jane]
# find_suspects(pockets, [1, 7, 5, 2]) # => nil
# find_suspects(pockets, []) # => [:bob, :tom, :jane]
# find_suspects(pockets, [7]) # => [:bob, :tom]

# Data:
# hashes, arrays, integers

# Algorithm:

# define `find_suspets` method with 2 parameter `pockets` and `items`
#   iterate over the items in the `pockets` hash
#     select the name if there pockets contain something that is not allowed
#   if none, return nil
# end

# Code:

# def find_suspects(pockets, items)
#   suspects = pockets.select do |k, v| 
#       next if v == nil || v.empty?
#       v.any? {|x| !items.include?(x)}
#     end
#   return suspects.keys unless suspects.empty?
# end

# pockets = { 
#   bob: [1], tom: [2, 5], jane: [7]
# } 

# p find_suspects(pockets, [1, 2])  == [:tom, :jane]
# p find_suspects(pockets, [1, 7, 5, 2])  == nil
# p find_suspects(pockets, [])  == [:bob, :tom, :jane]
# p find_suspects(pockets, [7])  == [:bob, :tom]

# 34) Mexican Wave (https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/ruby) (17 minutes)

# Problem:
# Input: a string
# output: an array of strings
# Rules:
  # input will always be downcased
  # spaces should be skipped

# Examples:
# wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# Data:
# Strings, arrays

# Algorithm:

# define `wave` with 1 parameter `input`
#   initialize `result` to an empty array
#   iterate over each character in the string with index
#     if the character is alphabetical
#       downcase input string
#       upcase the character at that index in the string and return the string to results (mutating)

#     otherwise got to the next character
#     return results
#     end

# Code:

# def wave(input)
#   result = []
#   input.chars.each_with_index do |char, idx|
#     chars = input.chars
#     if ('a'..'z').include?(char)
#       chars[idx] = char.upcase
#       word = chars.join('')
#       result << word
#     end
#   end
#   result
# end

# p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

# 35) Delete a Digit (https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby) ( 17 minutes )

# Problem:
# Input: an integer
# Output: an integer
# Rules:
  # only 1 digit to be removed from given integer
  # numbers stay in the same order

# Examples:
# p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1

# Data:
# Integers

# Algorithm:
# define `delete_digit` with 1 parameter `input`
#   initialize `nums`
#   iterate over the input numbers digits
#     remove each digit and add new number to nums
#   return the largest number in nums
# end

# Code:

# def delete_digit(input)
#   nums = []
#   0.upto(input.to_s.size - 1) do |x|
#     number = input.digits.reverse
#     number[x] = []
#     nums << number.join.to_i
#   end
#   nums.max
# end

# def delete_digit(input)
#   digits = input.to_s.chars
#   (0...digits.size).map do |idx|
#     (digits[0...idx] + digits[idx + 1..-1]).join.to_i
#   end.max
# end

# p delete_digit(123)
# p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1

# 36) Multiples of 3 or 5 (https://www.codewars.com/kata/514b92a657cdc65150000006/train/ruby) ( 4 minutes )

# Algorithm:

# define `solution` with parameter `num`
#   initialize numbers to empty array
#   loop from 3 up to but not including num
#   add num to numbers if divisible by 3 or 5
#   return sum of numbers
# end

# Code:
# def solution(num)
#   return 0 if num < 0
#   numbers = []
#   (3...num).each do |n|
#     numbers << n if n % 3 == 0 || n % 5 == 0
#   end
#   numbers.sum
# end

# 37) String Transformer (https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby) (? Test cases are unreliable)
# Problem:
# Input:  a string
# Output: a string with case swapped and words reversed
# Rules:
  # case to be swapped for all alphabetical characters
  # words order to be swapped
  # spaces inbetween words to remain in the same place.

# Examples:
# "Example Input" ==> "iNPUT eXAMPLE"

# Data:
# Strings

# Algorithm:
# define `string_transformer` with 1 parameter `input`
#   call swapcase! on input to swap character case
#   split string on word boundaries
#   End

# # Code:
# def string_transformer(input)
#   input.swapcase!
#   input.split(/\b/).reverse.join
# end

# 38) Largest Product in a series (https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby) (2:35)

# #each_cons(num) is a much better way to solve this.

# def greatest_product(input)
#   products = []
#   (0...(input.length-4)).each do |start|
#     products << input[start,5].chars.map(&:to_i).inject(:*)
#   end
#   products.max
# end

# 39) Duplicate Encoder (https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/ruby) ( 8 minutes )

# Problem:
# Input: a string
# Output: a string made up of "(" and ")" characters
# Rules:
  # if character appears in the string only once, return (
  # if character appears in the string more than once, return )
  # igntore capitalization in input

# Examples:
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))((" 

# Data:
# Strings

# Algorithm:
# define `duplicate_encode` method with parameter `word`
#   iterate over the characters in the word
#     scan the word for occurances of the current character
#      if it occurs greater than 1 time return )
#       otehrwise return (
#   return that string
#       end

# Code:

# def duplicate_encode(word)
#   word.downcase.chars.map { |char| word.downcase.count(char) > 1 ? ")" : "(" }.join
# end

# 40) Backspaces in string (https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/ruby) (9 minutes)

# Problem:
# Input: string
# Output: string
# Rules:
  # "#" symbol is backtick
  # if there are more #s than characters before it, return an empty string
  # return empty string if given string is empty

# Examples:
# "abc#d##c"      ==>  "ac"
# "abc##d######"  ==>  ""
# "#######"       ==>  ""
# ""              ==>  ""

# Data:
# Strings

# Algorithm:
# define `clean_string` with 1 parameter `input`
#   if input.index("#") > 0
#     input.delete_at(input.index("#") - 1)
#     input.delete_at(input.index("#"))
#   end
# end

# Code:

# def clean_string(input)
#   input = input.chars
#   while input.count("#") > 0
#     if input.index("#") > 0
#       input.delete_at(input.index("#") - 1)
#       input.delete_at(input.index("#"))
#     else
#       input.delete_at(input.index("#"))
#     end
#   end
#   input.join('')
# end

# def clean_string(input)
#   while input.include?("#")
#     input.each_char.with_index do |char, idx|
#       if char == "#"
#         input[idx] = ""
#         input[idx-1] = "" unless (idx - 1) == -1
#         break # break required to refresh input string each time a character is removed.
#       end
#     end
#   end
#   input
# end

# p clean_string('abc#d##c') #== "ac"
# p clean_string('abc####d##c#') #== "" 

# 41) Sort Arrays (Ignoring Case) (https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9/train/ruby) (2 minutes)

# Problem:
# Input: array of strings
# Output: array of strings sorted
# Rules:
  # Sort should be case insensitive

# Code:

# def sortme(strings)
#   strings.sort_by {|string| string.downcase}
# end

# 42) Tranforming to Prime (https://www.codewars.com/kata/5a946d9fba1bb5135100007c/train/ruby) (20 minutes)

# Problem:
# Input: array of numbers
# Output: integer needed to reach next prime number
# Rules:
  #

# Algorithm:
# define `minium_number` method with parameter `numbers`
#   initialize `sum` to sum of numbers
#   loop from 0 to sum
#     check if sum + current number is prime
#       to check prime do:
#         return false if number is 0 or less
#         from 0 to the sqaure root of the number check if any of the chck number is evenly divisible by curr num
#     if it is, return current number
#     end
#   End
# end

# Code:

# def is_prime?(num)
#   return false if num <= 1
#   (2..Math.sqrt(num)).none? {|div| num % div == 0}
# end

# def minimum_number(numbers)
#   sum = numbers.sum
#   0.upto(sum) do |num|
#     if isprime?(sum + num)
#       return num
#     end
#   end
# end

# 43) Counting Duplicates (https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/ruby) (7 minutes)

# Problem:

# Code:

# def duplicate_count(text)
#   characters = text.downcase.chars
#   alphabet = ('a'..'z').to_a
#   alphabet.select {|char| characters.count(char) >= 2}.size
# end

# 44) Alpabetized (https://www.codewars.com/kata/5970df092ef474680a0000c9/train/ruby) ( 11 minutes)

# Problem:
# Input:  a string
# Output: a string output sorted by alphabet
# Rules:
  # string output should remove spaces and whitepsace
  # string output should be sorted alphabetically case insensitive
  # 

# Examples
# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
# p alphabetized("A b B a") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
# p alphabetized("!@$%^&*()_+=-`,") == ""
# p alphabetized("The Holy Bible") == "BbeehHilloTy"
# p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"

# Data:
# Strings

# Algorithm:
# define `alphabetized` with 1 paramter `input`
#   initialize `characters` to the characters of `input`
#   select only alphabetical characters in the `characters` array
#   sort the characters in the `characters` array by all characters downcased
#   return the characters array joined with no spaces
# end

# Code:

# def alphabetized(input)
#   characters = input.chars
#   characters.select! {|char| ('a'..'z').include?(char.downcase)}
#   characters.sort_by {|char| char.downcase}.join('')
# end

# def alphabetized(input) # This maintains sequence of uppercase and lowercase letters.
#   alpha = ('a'..'z').to_a
#   string = ""

#   alpha.each do |alp|
#     input.each_char do |char|
#       if alp == char.downcase
#         string << char
#       end
#     end
#   end
#   string
# end

# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
# p alphabetized("A b B a") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
# p alphabetized("!@$%^&*()_+=-`,") == ""
# p alphabetized("The Holy Bible") == "BbeehHilloTy"
# p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"

# 45) Sum of Digits / Digital Root (https://www.codewars.com/kata/541c8630095125aba6000c00/train/ruby) (8 minutes)

# Problem:
# Input: integer
# Output: single digit intger
# Rules:
  # return the sum of the digits of a number down to 1 digit
  # 

# Examples:
# 16  -->  1 + 6 = 7
# 942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
# 132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6

# Data:
# Integers

# Algorithm:
# define `digital_root` method with 1 parameter `n`
#   initialize sum to the result of `n` digits sum
#   while sums length of digits is greater than 1 do
#     split sum into digits, add them together
#     return new sum back to sum
#   end
# end

# Code:

# def digital_root(n)
#   sum = n.digits.sum
#   while sum.digits.size > 1 do
#     sum = sum.digits.sum
#   end
#   sum
# end

# 46) Array.diff (https://www.codewars.com/kata/523f5d21c841566fde000009/train/ruby) ( 9 minutes )

#Problem:
# Input: two arrays
# Output: array of integers
# Rules:
  # element must appear in second array to not be included
  # if element in first array DOESN'T appear in second array, return it.
  # count of el in 1st and second does not matter

# Examples:
# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []
# p array_diff([1,2,3], [1,2]) == [3]

# Data:
# Arrays, integers

# Algorithm:

# define `array_diff` method with 2 parameters `ar1` and `ar2`
#   intiialize result array
#   for each element in ar1
#     check if ar2 has that element
#       if it doesn, go to next element
#       if it doesnt, add element to results.

#   return results

# Code:

# def array_diff(ar1, ar2)
#   result = []
#   ar1.each do |el|
#     ar2.include?(el) ? next : result << el
#     #   next
#     # else
#     #   result << el
#     # end
#   end
#   result
# end

# def array_diff(ar1, ar2)
#   ar1.select {|el| !ar2.include?(el)}
# end

# def array_diff(ar1, ar2)
#   ar1 - ar2
# end

# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []
# p array_diff([1,2,3], [1,2]) == [3]

# 47) Where is my parent? (https://www.codewars.com/kata/58539230879867a8cd00011c/train/ruby) (13 minutes)

# Problem:
# Input: a string of uppercase and lowercase letters
# Output: a string with letter sorted, and uppercase letters appearing before lowercase letter
# rules:
  # Result should be sorted alphabettically, with first instance of each letter being the uppercase one.

# examples:
# p find_children("abBA") == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""

# Data:
# strings

# Algorithm:
# define `find_children` method with 1 parameter `dancers`
#   sort dancers characters by characters downcased
# end

# Code:

# def find_children(dancers)
#   dancers.chars
#   .group_by {|char| char.downcase}
#   .values
#   .map {|el| el.sort}
#   .sort
#   .join('')
# end

# p find_children("abBA") == "AaBb"
# p find_children("AaaaaZazzz") == "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""

# 48) Playing with Digits (https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby)

# Dead link to problem.

# 49) Equal sides of an array (https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby) (5 minutes)
# Repeated solution, tried in original list of codewar problems.

# def find_even_index(arr)
#   equal = -1
#   arr.each_with_index do |_, idx|
#     if arr[0...idx].sum == arr[(idx+1)..-1].sum
#       equal = idx
#       break
#     end
#   end
#   equal
# end

# # Or more elegant

# def find_even_index(input)
#   result = -1
#   (0..(input.size)).each do |index|
#    return index if input[0..index].sum == input[index..-1].sum
#   end
#   result
# end

# 50) Reverse or rotate? (https://www.codewars.com/kata/56b5afb4ed1f6d5fb0000991) (1:14)

# Problem:
# Input: integer as a string and int
# Rules:
  # string is split into subsets of digits of `int`
  # if string is unevenly divisble by `int`, last digits remain the same
  # if the subsets sum of the cube of its digits is divisible by two reverse that chunk, otherwise rotate it left by one.
  # If input is empty return ""
  # if sz is less than or equal to 0 return ""
  # if sz is greater than length of string return ""

# Exmaples:
# revrot("123456987654", 6) --> "234561876549"

# Data:
# strings and integers

#Algorithm:
# define `revrot` with 2 parameters `str` and `sz`
#   defien start index
#   loop until index is outside str length
#   check if the digits cubed are divisible by two
#     if they are reverse the chunk
#     if not, rotate the chunk
#   return the chunk back to the original string
#   increase start index by sz
#     end

# Code:

# def revrot(str, sz)
#   return "" if sz < 1 || str.empty? || str.size < sz
#   num = str.size / sz
#   idx = 0
#   res = ""
#   num.times do
#     if str[idx,sz].chars.map{|x| x.to_i ** 3}.sum % 2 == 0
#       res << str[idx,sz].chars.reverse.join('')
#     else
#       res << str[idx,sz].chars.rotate.join('')
#     end
#     idx += sz
#   end
#   res
# end

# p revrot("1234", 0) == ""
# p revrot("", 0) == ""
# p revrot("1234", 5) == ""
# p revrot("123456987654", 6) == "234561876549"
# p revrot("733049910872815764", 5) == "330479108928157"

# 51) Decipher this! (https://www.codewars.com/kata/581e014b55f2c52bb00000f8) (30 minutes)

# Problem:
# Input: string
# Output: string
# Rules:
  # 2nd and last letter have been switched
  # first letter is replaced with it's character code

# Examples:
# p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

# Data:
# strings

# Algorithm:
# define `decipher_this` method with 1 parameter `string`
#   split string into words
#   iterate over words
#     convert character code back to a character
#       # to do...
#     swap 2nd and last letter
#   join words back together with space
# end

# Code:

# def decipher_this(string)
#   words = string.split
#   words.map! do |word|
#     find = word.split(/[a-zA-Z]/)[0].to_s
#     word.gsub!(find, find.to_i.chr)
#     if word.size > 1
#       word[1], word[-1] = word[-1], word[1]
#     end
#     word
#   end
#   words.join(' ')
# end

# p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
# p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
# p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
# p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

# 52) Bouncing Balls (https://www.codewars.com/kata/5544c7a5cb454edb3c000047) (18 minutes)

# Problem:
# Input: heigh, bounce, window as integers
# Output: integer
# Rules:
  # the ball bounces `bounce` of its height
  # return count of times `window` see bounce both up and down
  # height must be greather than 0, 
  # bounce must be greater than 0 but less than 1
  # window must be less than height

# Examples:
# p bouncingBall(3, 0.66, 1.5) == 3
# p bouncingBall(30, 0.66, 1.5) == 15
# p bouncingBall(30, 0.75, 1.5) == 21
# p bouncingBall(30, 0.4, 10) == 3
# p bouncingBall(40, 1, 10) == -1
# p bouncingBall(-5, 0.66, 1.5) == -1

# Data:
# integers

# Algorithm:
# define `bouncingBall` with 3 parameters `h`, `b`, and `w`
#   return -1 if any of the conditions are not fulfilled
#   initialize alt to starting `h`
#   initialize count to `1`
#   loop while `alt` is greater than `w`
#     add 2 times to `w`
#     times alt by `b`
#   return count
# end

# Code:

# def bouncingBall(h,b,w)
#   return -1 if h < 0 || b <= 0 || b >= 1 || w >= h
#   alt = h
#   count = 1
#   loop do
#     alt = alt * b
#     break if alt <= w
#     count += 2
#   end
#   count
# end

# p bouncingBall(3, 0.66, 1.5) == 3
# p bouncingBall(30, 0.66, 1.5) == 15
# p bouncingBall(30, 0.75, 1.5) == 21
# p bouncingBall(30, 0.4, 10) == 3
# p bouncingBall(40, 1, 10) == -1
# p bouncingBall(-5, 0.66, 1.5) == -1

# 53) repeat

# 54) repeat

# 55) repeat

# 56) Find the nexuis of the Codewars Universe (https://www.codewars.com/kata/5453dce502949307cf000bff) (8 minutes)

# Problem:
# Input: hash
# Output: integer representing the users rank
# Rules:
  # return the lowest rank number if mutliple users are "closest"
  # if not users are exactly matched rank and honor, return closest
  # 

# Examples:
# users = {1 => 3, 3 => 3, 5 => 1}
# p nexus(users) == 3
# users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
# p nexus(users) == 3

# Data:
# Hashes, integers

# Algorithm:
# define `nexus` method with paramter `users`
#   sort users by rank value
#   sort users by rank value less honor (ignoring negative numbers)
#   return the first users rank
# end

# Code:

# def nexus(users)
#   users.sort_by{|k,v| k}.to_h.sort_by{|k,v| (k - v).abs}.to_h.keys.first
# end

# users = {1 => 3, 3 => 3, 5 => 1}
# p nexus(users) == 3
# users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
# p nexus(users) == 3

# 57) Count Letters in string (https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d) 

# Repeated

# 58) Triple trouble (https://www.codewars.com/kata/55d5434f269c0c3f1b000058) (28 minutes)

# Problem:
# Input: two integers
# Output: 1 or 0
# Rules:
  # return 1 if num1 has a 3 numbers consecutively and num2 has 2 numbers consecutively
  # otherwise return 0

# Examples:
# p triple_double(451999277, 41177722899) == 1
# p triple_double(1222345, 12345) == 0
# p triple_double(12345, 12345) == 0
# p triple_double(666789, 12345667) == 1
# p triple_double(10560002, 100) == 1
# p triple_double(1112, 122) == 0

# Data:
# integers

# Algorithm:
# define `triple_double` method with two parameters `num1` and `num2`
#   if any of 3 consecutive digits of num1 are equal to themselves reversed and any 2 consecutive digits of num2 are equal to themselves reversed
#     return 1
#   otherwise
#   return 0
#   end

# Code:

# def triple_double(num1, num2)
#   dig1 = num1.digits
#   dig2 = num2.digits
#   if dig1.each_cons(3).any? {|nums| nums.all?{|x| x == nums[1]}}
#     valid_digs = dig1.each_cons(3).select {|nums| nums == nums.reverse}
#     valid_digs = valid_digs.map{|x| x[0]}
#     if dig2.each_cons(2).any? do |num|
#       num == num.reverse && valid_digs.include?(num[0])
#       end
#       return 1
#     else
#       return 0
#     end
#   else
#     return 0
#   end
# end

# Or checking for series of digits from 0 to 9

# def triple_double(num1, num2)
#   num1 = num1.to_s
#   num2 = num2.to_s

#   10.times do |dig|
#     if num1.include?(dig.to_s * 3) && num2.include?(dig.to_s * 2)
#       return 1
#     end
#   end
#   return 0
# end

# p triple_double(451999277, 41177722899) == 1
# p triple_double(1222345, 12345) == 0
# p triple_double(12345, 12345) == 0
# p triple_double(666789, 12345667) == 1
# p triple_double(10560002, 100) == 1
# p triple_double(1112, 122) == 0

# 59) Which are in? (https://www.codewars.com/kata/550554fd08b86f84fe000a58) (12 minutes)

# Problem:
# Input: 2 array of strings
# Output: array of strings
# rules:
  # in order for string from ar1 to appear in result it must be include in any of of the string in `ar2`

# Examples:
# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# p in_array(a1, a2) == ["arp", "live", "strong"]
# a1 = ["tarp", "mice", "bull"]
# p in_array(a1, a2) == []

# Data:
# Strings, arrays

# Alogrithm:
# define `in_array` method with 2 parameter `ar1` and `ar2`
#   initialize `results` to empty array
#   iterate over each string in `ar1`
#     check if current string from ar1 appears in any of the string in ar2
#     if it does, add to results
#     end
#   end

# Code:

# def in_array(ar1, ar2)
#   ar1.select do |s1|
#     ar2.any? {|comp| comp.include?(s1)}
#   end.sort
# end

# a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# p in_array(a1, a2) == ["arp", "live", "strong"]
# a1 = ["tarp", "mice", "bull"]
# p in_array(a1, a2) == []

# 60) Format a string of anems like "Bart, Lisa, & Maggie". (https://www.codewars.com/kata/53368a47e38700bd8300030d) (15 miuntes)

# Problem:
# Input: array of hash names
# Output: string of naes with names seperated by comas except for the last pair &
# Rules:
  # if single name, return name
  # if two names, join with &
  # if more than two names, seperate with comma, except last pair &

# Examples:
# p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
# p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'
# p list([{name: 'Bart'}]) == 'Bart'

# Data:
# arrays, hashes, strings

# Algorithm:
# define `list` method with parameter `input`
#   initialize names to values of hashes in input
#   check if names array is only 1 name
#   if it is return the name
#   check if names array is only 2 names
#   if it is join 2 name by &
#   if names array is more than 2 names
#     reassign last two elements of the array to 1 element joined by &
#     join rest of element with comma
#   end
# end

# Code:

# Reassigning the last elements to be joined by delimiter.

# def list(input)
#   names = input.map {|hsh| hsh.values}.flatten
#   result = ""
#   case names.size
#   when 0 then ""
#   when 1 then names.first.to_s
#   when 2 then names.join(" & ")
#   else
#     names[-2..-1] = "#{names[-2]} & #{names.last}"
#     names.join(', ')
#   end
# end

# p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
# p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'
# p list([{name: 'Bart'}]) == 'Bart'

# 61) Find the missing letter (https://www.codewars.com/kata/5839edaa6754d6fec10000a2) ( 10 minutes )

# Problem:
# Input: array of letters
# Output: string
# Rules:
  # Find the missing letter in sequence of letters
  # uppercase and lowercase letters, but only one case in each input

# examples:
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

# Data:
# arrays, strings

# Algorithm:
# define `find_missing_letter` with 1 parameter `arr`
#   assign the `curr` to the first element in `arr` ascii number
#   loop over character in `arr`
#     check if char.ord == curr
#       if it does, increase curr by 1 and move on to the next element
#       if it doesn't, return the ascii character for `curr`
#       end
#     end
#   end
# end

# Code:
# def find_missing_letter(arr)
#   curr = arr[0].ord
#   arr.each do |char|
#     if char.ord == curr
#       curr += 1
#     else
#       return curr.chr
#     end
#   end
# end

# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"

# 62) Who likes it? (https://www.codewars.com/kata/5266876b8f4bf2da9b000362) ( 10 minutes )

# Problem:
# Input: array
# Output: string
# Rules:
  # if array is empty, return `no one likes this`
  # if 4 or more people like a post, return first two names and count of others

# Examples:
# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

# Data:
# arrays, strings

# Alogrithm:
# define `likes` method with 1 parameter `names`
#   return "No one likes this" if array is empty
#   case statement based on array size
#   when 1 then "array names one likes this"
#   when 2 then "array name 1 and 2 like this"
#   when 3 then "array name 1, name 2 and name 3 like this"
#   else
#     num = arr.size - 2
#     return "array name 1, arr name 2 and num others like this"
#   end
# end

# Code:

# def likes(names)
#   return "no one likes this" if names.empty?
#   case names.size
#   when 1 then "#{names[0]} likes this"
#   when 2 then "#{names[0]} and #{names[1]} like this"
#   when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
#   else
#     num = names.size - 2
#     "#{names[0]}, #{names[1]} and #{num} others like this"
#   end
# end

# p likes([]) == 'no one likes this'
# p likes(['Peter']) == 'Peter likes this'
# p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
# p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
# p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'

# 63) Find The Parity Outlier (https://www.codewars.com/kata/5526fc09a1bbd946250002dc) (7 minutes)

# Problem:
# Input: array of numbers
# Output: an integer
# Rules:
  # array will consist of at least 3 nubmers
  # array will have an outlier, either a single odd or even number
  # 

# Examples:
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# Data:
# Integers, arrays

# Algorithm:

# Option 1)

# define `find_outlier` method with parameter `integers`
#   initialize odd
#   initialize even
#   iterate over numbers in `integers`
#     if odd, at to odd, if even add to even
#   return odd or even, whichever is size is equal to 1
# End

# Option 2)
# check first 3 numbers to see if looking for an odd number or even number
# find the only outliter in integers

# Code:

# Option 1)
# def find_outlier(integers)
#   odd = []
#   even = []
#   integers.each do |num|
#     num.odd? ? odd << num : even << num
#   end
#   odd.size == 1 ? odd[0] : even[0]
# end

# Or:
# def find_outlier(integers)
#   odd = integers.select {|x| x.odd?}
#   even = integers.select { |x| x.even?}
#   odd.size > even.size ? even.first : odd.first
# end

# Option 2)

# def find_outlier(integers)
#   outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
#   integers.find(&outlier)
# end

# p find_outlier([0, 1, 2]) == 1
# p find_outlier([1, 2, 3]) == 2

# 64) Is Integer Array? (https://www.codewars.com/kata/52a112d9488f506ae7000b95) ( 15 minutes )

# Problem:
# Input: array
# Output: true or false
# Rules:
  # return true if every element in `arr` is an integer
  # return true if `arr` is empty
  # return flase for anything else, including a non-array input or a string input

# Examples:

# p is_int_array([]) == true, "Input: []"
# p is_int_array([1, 2, 3, 4]) == true, "Input: [1, 2, 3, 4]"
# p is_int_array([-11, -12, -13, -14]) == true, "Input: [-11, -12, -13, -14]"
# p is_int_array([1.0, 2.0, 3.0]) == true, "Input: [1.0, 2.0, 3.0]"
# p is_int_array([1, 2, nil]) == false, "Input: [1,2, nil]"
# p is_int_array(nil) == false, "Input: nil"
# p is_int_array("") == false, "Input: ''"
# p is_int_array([nil]) == false, "Input: [nil]"
# p is_int_array([1.0, 2.0, 3.0001]) == false, "Input: [1.0, 2.0, 3.0001]"
# p is_int_array(["-1"]) == false, "Input: ['-1']"

# Data:
# Arrays

# Algorithm:
# define `is_int_array` with 1 parameter `arr`
#   return true if `arr` is empty
#   check if all element of arr are integers
#   if they are return true
#   otherwise return false
#   end

# Code:

# def is_int_array(arr)
#   return false if !arr.is_a?(Array)
#   return true if arr.empty?
#   return true if arr.all? {|x| x.to_i.to_s.to_i == x}
#   false
# end

# p is_int_array([]) == true, "Input: []"
# p is_int_array([1, 2, 3, 4]) == true, "Input: [1, 2, 3, 4]"
# p is_int_array([-11, -12, -13, -14]) == true, "Input: [-11, -12, -13, -14]"
# p is_int_array([1.0, 2.0, 3.0]) == true, "Input: [1.0, 2.0, 3.0]"
# p is_int_array([1, 2, nil]) == false, "Input: [1,2, nil]"
# p is_int_array(nil) == false, "Input: nil"
# p is_int_array("") == false, "Input: ''"
# p is_int_array([nil]) == false, "Input: [nil]"
# p is_int_array([1.0, 2.0, 3.0001]) == false, "Input: [1.0, 2.0, 3.0001]"
# p is_int_array(["-1"]) == false, "Input: ['-1']"

# 65) Basics 06: Reversing and Combining Text (https://www.codewars.com/kata/56b861671d36bb0aa8000819/train/ruby) Revisit

# Problem:
# Input: string
# Output: string
# Rules:
  # if only 1 word return word
  # reverse each word and combine in pairs

# Examples:
# Input:  "abc def"
# Output: "cbafed"

# Input:  "abc def ghi 123"
# Output: "defabc123ghi"

# Input:  "abc def gh34 434ff 55_eri 123 343"
# Output: "43hgff434cbafed343ire_55321"

# Data:
# Strings

# Algorithm:
# define `reverse_and_combine_text` with 1 parameter `input`
#   initialize `s` to cloned input
#   loop while the number of words in `s` is greater than 1
#     initialize words to words in `s` reversed
#     initialize `s2` to an empty string
#     iterates overs words in `words` with index
#       if index is even and index + 1 is not nil
#         append `s2` with << words[index+1] and word[index]
#       else
#         append `s2` with a space and words[index]
#       end
#     end
#   end
# end

# Code:
# def reverse_and_combine_text(input)

# end

# p reverse_and_combine_text("abc def") #== "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
# p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

# 66) Integer reduction (https://www.codewars.com/kata/59fd6d2332b8b9955200005f/ruby) (25 minutes)

# Problem:
# Input: 2 integers
# Output: integer
# Rules:
  # return in the lowest possible number while removing `x` number of digits, without changing digit order
  # digits must remain in order

# Examples:
# p solve(123056,1) =='12056'
# p solve(123056,2) =='1056'
# p solve(123056,3) =='056'
# p solve(123056,4) =='05'
# p solve(1284569,1) =='124569'
# p solve(1284569,2) =='12456'
# p solve(1284569,3) =='1245'
# p solve(1284569,4) =='124'

# Data:
# Integers

# Algorithm:
# define `solve` with two parameters `num` and `digs`
#   initialize `digits` to an array of digits in `num` ( be sure to call reverse to maintain order)
#   initialize `possibilities` to an empty array
#   create all possible numbers of `num` with `digs` times digits removed.
#     # to do..
#   return lowest number in possibilities
# end

# Code:

# def solve(num, digs)
#   digits = num.digits.reverse
#   possibilities = digits.combination(num.to_s.length - digs).map(&:join)
#   possibilities.min_by {|x| x.to_i}
# end

# p solve(123056,1) =='12056'
# p solve(123056,2) =='1056'
# p solve(123056,3) =='056'
# p solve(123056,4) =='05'
# p solve(1284569,1) =='124569'
# p solve(1284569,2) =='12456'
# p solve(1284569,3) =='1245'
# p solve(1284569,4) =='124'

# 14) Dubstep (https://www.codewars.com/kata/551dc350bf4e526099000ae5/train/ruby) (2:55)

# Problem:
# Input: string
# output: string
# Rules:
  # Words at serpated by `WUB`
  # `WUB` can appear before the first word multiple times or zero times and after the last word multiple or zero times.
  # only uppercase letters

# Examples:
# p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  =>  WE ARE THE CHAMPIONS MY FRIEND
# p song_decoder("AWUBBWUBC") == "A B C"
# p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
# p song_decoder("WUBAWUBBWUBCWUB") == "A B C"

# Data:
# strings

# Algorithm:

# define `song_decoder` method with 1 parameter `input`
#   split `input` on `WUB`
#   check if strngs in array are not blank
#   join with spaces
# end

# Code:

# def song_decoder(input)
#   input.split('WUB').select {|x| x.size > 0 }.join(' ')
# end

# p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") == "WE ARE THE CHAMPIONS MY FRIEND"
# p song_decoder("AWUBBWUBC") == "A B C"
# p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
# p song_decoder("WUBAWUBBWUBCWUB") == "A B C"

########### Practice example exercises #######

# 1) "reverse an array without using the built-in Array#reverse method". ( 12 minutes )

# Problem: 
# Input: array
# Output: array
# Rules:
  # Return a new(?) array with all elements of input array in reverse order

# Examples:
# [1,2,3] == [3,2,1]
# ['a', 'b', 'c'] == ['c','b','a']

# Data:
# Arrays

# Algorithm:

# define `reverse_it` with 1 parameter `input`
#   initialize `result` to an empty array
#   iterate over each element of `input` placing each element at the start of the `result` array
#   return result
# end

# Code:

# def reverse_it(input)
#   result = []
#   input.each do |x|
#     result.unshift(x)
#   end
#   result
# end

# p reverse_it([1,2,3]) == [3,2,1]
# p reverse_it(['a', 'b', 'c']) == ['c','b','a']

# To modify arr in place, swap elements at the indexes.

# def reverse_it!(input)
#   swaps = input.size / 2
#   swaps.times do |x|
#     input[x], input[-(x+1)] = input[-(x+1)], input[x]
#   end
#   input
# end

# arr = [1,2,3,4,5]
# p arr == [1,2,3,4,5]
# p reverse_it!(arr) == [5,4,3,2,1]
# p arr == [5,4,3,2,1]
# p reverse_it!([1,2,3,4,5]) == [5,4,3,2,1]
# p reverse_it!(['a', 'b', 'c']) == ['c','b','a']


# 2) "select the element out of the array if its index is a Fibonacci number," (8 minutes)

# Problem:
# Input: array
# Output: integer
# Rules:
  # Selected element must be a fibonacci number

# Examples:
# [7,9,13,16,20] == 13
# [7,9,14,20,80,89,90] == 89

# Data:
# Arrays, integers

# Algorithm:

# define `find_fib` method with 1 parameter `input`
#   initialize max to the hihgest number in input
#   intialize `fibs` to an empty array
#   create the fibonnaci seqeuence up to a number 1 higher than `max`
#     # to do
#   select the element from `input` that is also in `fibs`
# end

# Code:

# def find_fib(input)
#   max = input.max
#   fibs = [1]
#   until fibs.max > max
#     num = fibs.last(2).sum
#     fibs << num
#   end
#   input.select { |x| fibs.include?(x)}.first
# end

# p find_fib([7,9,13,16,20]) == 13
# p find_fib([7,9,14,20,80,89,90]) == 89

# 3) "write a function that removes every other element from an array." (12 minutes)

# Problem:
# Input: array
# Output: array
# Rules:
  # remove every 2nd element from input array
  # create two methods, one that modifies input array, and one that returns a new array

# Examples:
# [1,2,3,4] == [1,3]
# [1,2,3,4,5] == [1,3,5]
# ['a','b','c','d','e','f'] == ['a','c','e']

# Data:
# Arrays

# Algorithm:

# Option 1) return new array
# define `every_2nd` with 1 parameter `input`
#   initialize `result` to empty array
#   iterate over each element in `input` with index
#     if index is even, add element to `result`
#   return `result`

# Option 2) Mutate input array
# define `every_2nd!` with 1 paremter `input`
#   iterate over element in `input` with index
#     if index is odd, replace element with `DL`
#     end
#   iterate over each element in `input` and delete all elements of `DL`
#   end

# Code:

# def every_2nd(input)
#   result = []
#   input.each_with_index do |x, idx|
#     if idx.even?
#       result << x
#     end
#   end
#   result
# end

# p every_2nd([1,2,3,4]) == [1,3]
# p every_2nd([1,2,3,4,5]) == [1,3,5]
# p every_2nd(['a','b','c','d','e','f']) == ['a','c','e']

# Mutating method:

# def every_2nd!(input)
#   input.map!.with_index do |x, idx|
#     idx.odd? ? "DL" : x
#   end
#   input.delete("DL")
#   input
# end

# p every_2nd!([1,2,3,4]) == [1,3]
# p every_2nd!([1,2,3,4,5]) == [1,3,5]
# p every_2nd!(['a','b','c','d','e','f']) == ['a','c','e']

# arr = [1,2,3,4,5,6]
# p arr == [1,2,3,4,5,6]
# p every_2nd!(arr) == [1,3,5]
# p arr == [1,3,5]

############################################ More Codewards practice ############################################

# 1) Your order, please (https://www.codewars.com/kata/55c45be3b2079eccff00010f/ruby) ( 8 minutes )

# Problem:
# Input: string
# Output: string
# Rules:
  # input string will have an integer somewhere in each word
  # Sort words in string by the number hidden within

# Examples:
# "is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
# "4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"

# Data:
# Strings, Arrays

# Algorithm:

# define `order` with 1 parameter `words`
#   initalize `wrd` to words in `words`
#   iterate and sort the `wrd` array by the number hidden in the word
#     scan characters in `wrd` for a number 1-9
#     return that number to sort by
# end.join with spaces
# end

# Code:

# def order(words)
#   wrd = words.split
#   wrd.sort_by do |w|
#     w.chars.sort[0]
#   end.join(' ')
# end

# p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
# p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
# p order("") == ""

# 2) Checkered board (https://www.codewars.com/kata/5650f1a6075b3284120000c0/train/ruby) ( 20 minutes)

# Write a function which takes one parameter representing the dimensions of a checkered board. The board will always be square, so 5 means you will need a 5x5 board.

# The dark squares will be represented by a unicode white square, while the light squares will be represented by a unicode black square (the opposite colours ensure the board doesn't look reversed on code wars' dark background). It should return a string of the board with a space in between each square and taking into account new lines.

# An even number should return a board that begins with a dark square. An odd number should return a board that begins with a light square.

# There should be no trailing white space at the end of each line, or new line characters at the end of the string.

# Note
# The squares are characters ■ and □ with codes \u25A0 and \u25A1.
# Do not use HTML entities for the squares (e.g. □ for white square) as the code doesn't consider it a valid square. A good way to check is if your solution prints a correct checker board on your local terminal.

# Ruby note: CodeWars has encoding issues with rendered unicode in Ruby. You'll need to use unicode source code (e.g. "\u25A0") instead of rendered unicode (e.g "■").

# Problem:
# Input: Integer
# Output: Series of strings
# Rules:
  # board will always be square, ie: 2x2, 5x5, 7x7 etc.
  # Squares will alternate colours
  # following row starts with opposite colour square
  # Even number boards start with a dark square, odd starts with light square.

# Examples:
# Input: 5

# Output:
# ■ □ ■ □ ■
# □ ■ □ ■ □
# ■ □ ■ □ ■
# □ ■ □ ■ □
# ■ □ ■ □ ■

# Data:
# Integers, strings arrays?

# Algorithm:
# define `checkered_board` with 1 parameter `rows`
# initialize `char` to "\u25A0"
#   iterate `rows` times
# initialize `row` to empty Array
# iterate `rows` times
#   add `char` to `row`
#   change `char` to opposite code
# end
# join `row` with spaces and print
# end
# end

# Code:

# def checkered_board(rows)
#   rows.even? ? char = "\u25A1" : char = "\u25A0"
#   rows.times do |_|
#     row = []
#     rows.times do |_|
#       row << char
#       char == "\u25A0" ? char = "\u25A1" : char = "\u25A0"
#     end
#     row[0] == "\u25A0" ? char = "\u25A1" : char = "\u25A0"
#     p row.join(' ')
#   end
# end

# checkered_board(5)
# checkered_board(4)

# Output matches example outputs but doesn't pass on Codewars.

# 3) Zeros and Ones (https://www.codewars.com/kata/5a00a8b5ffe75f8888000080/train/ruby) 

# Given an array containing only zeros and ones, find the index of the zero that, if converted to one, will make the longest sequence of ones.

# For instance, given the array:

# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1]
# replacing the zero at index 10 (counting from 0) forms a sequence of 9 ones:

# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1]
#                   '------------^------------'
# Your task is to complete the function that determines where to replace a zero with a one to make the maximum length subsequence.

# Notes:

# If there are multiple results, return the last one:
# [1, 1, 0, 1, 1, 0, 1, 1] ==> 5

# The array will always contain only zeros and ones.
# Can you do this in one pass?

# Problem:
# Input: array of 0s and 1s
# Output: integer, index of the 0 replaced with 1 to make longest sequence of 1
# Rules:
  # can only replace one 0 to make the longest sequence
  # if the longest sequence length occurs more than once, return the last 0s index
  # 

# Examples:
# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1]
# replacing the zero at index 10 (counting from 0) forms a sequence of 9 ones:

# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1]
#                   '------------^------------'

# Data:
# Arrays, integers

# Algorithm:

# define `replace_zero` with 1 parameter `arr`
# initialize `result` to 0
# intiialize `length` to 0
#   iterate over each element in `arr` with index
#     if element is 0
#     intialize `curr` to arr
#       replace that element with 1 in `curr`
#     initialize substrings
#       create all substrings
#         add substring to substrings if all characters are zero
#     return index to `result` if:
#       longest substring in `substrings` is longer than `length`
#  return `result`
# end

# Code:

# def replace_zero(arr)
#   result = 0
#   length = 0
#   arr.each_with_index do |num, idx|
#     if num == 0
#       curr = arr.dup
#       curr[idx] = 1
#       substrings = []
#       0.upto(curr.length - 1) do |str|
#         1.upto(curr.length - str) do |len|
#           substring = curr[str, len]
#           substrings << curr if substring.all? {|x| x == 1}
#         end
#       end
#       curr[idx] = 0
#       next if substrings.empty?
#       longest = substrings.max.size
#       if longest >= length
#         result = idx
#         length = longest
#       end
#     end
#   end
#   result
# end

# Option 2, doesn't pass codewars time

# def replace_zero(arr)
#   result = 0
#   length = 0
#   arr.each_with_index do |num, idx|
#     if num == 0
#       curr = arr.dup
#       curr[idx] = 1
#       substrings = []
#       longest = curr.join.to_s.split('0').max_by{|x|x.size}.size
#       p longest
#       if longest >= length
#         result = idx
#         length = longest
#       end
#     end
#   end
#   result
# end

# p replace_zero([1,0,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,1,1]) == 10
# p replace_zero([1,1,0,1,1,0,1,1]) == 5
# p replace_zero([0,0,0,0,1,0]) == 5
# p replace_zero([1,0,0,0,0,0]) == 1
# p replace_zero([0,1,0,0,0,0]) == 2

# 4) Printer Errors (https://www.codewars.com/kata/56541980fa08ab47a0000040/ruby) ( 7 minutes)

# Problem:
# Input: string
# Output: fraction represented as a string
# Rules:
  # letters in input strign must be from `a`-`m`
  # return value must be a string

# Examples:
# s="aaabbbbhaijjjm"
# printer_error(s) => "0/14"

# s="aaaxbbbbyyhwawiwjjjwwm"
# printer_error(s) => "8/22"

# Data:
# arrays, strings, and integers

# Algrithm:
# define `printer_error` with parameter `s`
#   initialize `errors` to teh selects characters from `s` that are not `a`-`m`
#   output a string with size of errors array / size of `s`
# end

# Code:

# def printer_error(s)
#   errors = s.chars.select {|x| x =~ /[^a-m]/}
#   "#{errors.size}/#{s.size}"
# end

# s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
# p printer_error(s) #== "3/56"

# 5) Sort The Odd (https://www.codewars.com/kata/578aa45ee9fd15ff4600090d/ruby) (6 minutes)

# Problem:
# Input: array of integers
# Output: array of integers
# Rules:
  # leave even number in place
  # sort odd numbers in places of existing odd numbers

# Examples:
# [7, 1]  =>  [1, 7]
# [5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
# [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

# Data:
# Arrays, integers

# Alogrithm:
# define `sort_array` with 1 parameter `src`
#   initialize `odds` to the odd numbers in `src`
#   sort the `odds` array
#   iterate over the `src` array
#     if the number is odd, change that number to the first number in teh `odds` array
#     end

# Code:
# def sort_array(src)
#   odds = src.select{|x| x.odd?}.sort
#   src.map do |x|
#     x.odd? ? odds.shift : x
#   end
# end

# p sort_array([5, 3, 2, 8, 1, 4, 11]) ==  [1, 3, 2, 8, 5, 4, 11]
# p sort_array([2, 22, 37, 11, 4, 1, 5, 0]) ==  [2, 22, 1, 5, 4, 11, 37, 0]
# p sort_array([1, 111, 11, 11, 2, 1, 5, 0]) == [1, 1, 5, 11, 2, 11, 111, 0]
# p sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
# p sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
# p sort_array([]) ==  []
# p sort_array([19]) ==  [19]
# p sort_array([2]) ==  [2]
# p sort_array([7,5]) ==  [5,7]

# 6) Build a pile of Cubes (https://www.codewars.com/kata/5592e3bd57b64d00f3000047/ruby) (13 minutes)

# Problem:
# Input: integer
# Output: integer
# Rules:
  # input is total volume of all cubes
  # output in number of cubed cubes needed to reach total volume
  # if none exists, return -1

# Examples:
# findNb(1071225) --> 45
# findNb(91716553919377) --> -1

# Data:
# Arrays and integers

# Algorithm:
# define `find_nb` with 1 parameter `m`
#   # initialize `count` to 0
#   intiailize `cubes` to 0
#   iterate from 1 to `m` , tracking as `x`
#     return -1 if sum of `cubes` is greater than `m`
#     return `count` if sum of `cubes` is equal to `m`
#     add `x` **3 to `cubes`
# end

# Code:

# def find_nb(m)
#   cubes = 0
#   (1..m).each do |x|
#     return -1 if cubes > m
#     return x-1 if cubes == m
#     cubes += x**3
#   end
# end

# p find_nb(4183059834009) == 2022
# p find_nb(24723578342962) == -1
# p find_nb(135440716410000) == 4824
# p find_nb(40539911473216) == 3568
# p find_nb(10252519345963644753025)

# 7) Regex Validate PIN Code (https://www.codewars.com/kata/55f8a9c06c018a0d6e000132/train/ruby) (25 minutes)

# Problem:
# Input: string
# Output: boolean
# Rules:
  # PIN code must be made up of exactly 4 or 6 digits

# Examples:
# "1234"   -->  true
# "12345"  -->  false
# "a234"   -->  false

# Data:
# Strings, booleans

# Algorithm:
# define `validate_pin` with parameter `pin`
#   check if `pin` is made up of 4 or 6 digits
# end

# Code:

# def validate_pin(pin)
#   pin.match? /\A\d{4}(\d{2})?\z/
# end

# p validate_pin("") == false
# p validate_pin("1") == false
# p validate_pin("1111") == true
# p validate_pin("123456") == true
# p validate_pin("1234567890") == false
# p validate_pin("12") == false

# 8) Playing with digits (https://www.codewars.com/kata/5552101f47fc5178b1000050/train/ruby) (15 minutes)

# Problem:
# Input:
# Output:
# Rules:
  # 

# def dig_pow(n, p)
#   digs = n.digits.reverse
#   power = p
#   sum = 0
#   digs.map do |x|
#     sum += x**power
#     power += 1
#   end
#   times = -1
#   0.upto(sum) do |multi|
#     track = (n*multi)
#     times = multi if track == sum
#     break if track > sum
#   end
#   times
# end

# p dig_pow(89, 1) == 1
# p dig_pow(92, 1) == -1
# p dig_pow(46288, 3) == 51

# 9) The Supermarket Queue (https://www.codewars.com/kata/57b06f90e298a7b53d000a86/ruby) (13 minutes)

# Problem:
# Input: array of integers representing customers and their time at the till, and integer representing number of tills
# Output: integer
# Rules:
  # there is only 1 line serving multiple tills
  # Time returned is total time to process all customers at till

#Examples:

# queue_time([5,3,4], 1)
# should return 12
# because when n=1, the total time is just the sum of the times

# queue_time([10,2,3,3], 2)
# should return 10
# because here n=2 and the 2nd, 3rd, and 4th people in the 
# queue finish before the 1st person has finished.

# queue_time([2,3,10], 2)
# should return 12

# Data:
# Arrays, integers

# Algorithm:
# define `queue_time` with 2 paramters, `customers` and `tills`
#   intiailize `times` to an empty array
#   add `0` to `times` `tills` `times`
#   iterate over customers
#     add `customers time` to the min value in `times`
#   return the max value in `times`
# end

# Code:
# def queue_time(customers, tills)
#   times = Array.new(tills, 0)
#   customers.each do |time|
#     idx = times.index(times.min)
#     times[idx] += time
#   end
#   times.max
# end

# p queue_time([], 1) == 0
# p queue_time([5], 1) == 5
# p queue_time([2], 5) == 2
# p queue_time([1,2,3,4,5], 1) == 15
# p queue_time([1,2,3,4,5], 100) == 5
# p queue_time([2,2,3,3,4,4], 2) == 9

# 10) Maximum subarray sum (https://www.codewars.com/kata/54521e9ec8e60bc4de000d6c/ruby) (13 minutes)

# Problem:
# Input: array of intgers
# Output: integer
# Rules:
  # If all integers are positive, return sum of total array
  # If all integers are negative, return 0
  # sum must be made up of continuous numbers in input array
  # empty arrays return 0

# Examples:
# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# Data:
# arrays, integers

# Algorithm:
# define `max_sequence` with 1 parameter `input`
#   check if all numbers in input are greater than or equal to 0, if they are, return sum
#   check if all numbers are less than 0, if they are return 0
#   intialize `sum` to 0
#   create all subarray of `input`
#     if the sum of the subarray is greater than the `sum`
#       reassign sum to the current sum
#   return `sum`

# Code:

# def max_sequence(input)
#   return input.sum if input.all? {|x| x>= 0}
#   return 0 if input.all? {|x| x < 0}
#   sum = 0
#   (0...(input.size)).each do |idx|
#     (1..(input.size - idx)).each do |len|
#       curr = input[idx, len].sum 
#       sum = curr if curr > sum 
#     end
#   end
#   sum
# end

# p max_sequence([]) == 0
# p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
# p max_sequence([11]) == 11
# p max_sequence([-32]) == 0
# p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

# 11) 

# Test with Cruz ( 21 miuntes) (https://edabit.com/challenge/YRc8FrKtbHK4MCR7m)

=begin 
Create a function that takes a string and returns the reversed string. However there's a few rules to follow in order to make the challenge interesting:

    The UPPERCASE/lowercase positions must be kept in the same order as the original string (see example #1 and #2).
    Spaces must be kept in the same order as the original string (see example #3).
=end 

# Problem:
# Input: String
# Output: String
# Rules: 
  # reverse the string
  # if the character at that positon was prevously uppercase or lower case the returned character must the same case
  # maintain position of Spaces

#Examples:

# p special_reverse_string('Edabit') == 'Tibade'
# p special_reverse_string('UPPER lower') == 'REWOL reppu' # Case remains the same for the position
# p special_reverse_string('1 23 456') == '6 54 321' ### Spaces remain in place

# # Data:
# Strings, arrays

# Algorithm:

# define `special_reverse_string` with 1 parameter `input`
# initalize an `characters` to the characters in `input` that are not " "
# intialize `result` to an empty String
# iterate over every character in `input`
#   if character is a " "
#     return a space
#   else
#     check if last character ins `characters` is punction
#       if it is return character to `result`
#       determine if the current character is uppercase or lowercase
#         return the last characters from `characters` to the result string in the appropriate case
#       end
#     end

# Code:

# def special_reverse_string(input)
#   characters = input.chars.select {|x| x != " "}
#   result = ""
#   upcase_chars = ('A'..'Z').to_a
#   input.chars.each do |char|
#     if char == " "
#       result << " "
#     else
#       if ["!", ",", ".", "?"].include?(characters.last)
#         result << characters.pop
#       else
#         upcase_chars.include?(char) ? result << characters.pop.upcase : result << characters.pop.downcase
#       end
#     end
#   end
#   result
# end


# p special_reverse_string('Edabit') == 'Tibade'
# p special_reverse_string('UPPER lower') == 'REWOL reppu'
# p special_reverse_string('1 23 456') == '6 54 321'
# p special_reverse_string('Hello World!') == '!dlro Wolleh'
# p special_reverse_string("Where's your dog Daisy?") == "?ysiadg odru oys 'erehw"
# p special_reverse_string('addition(3, 2) = 5') == '5=)2,3(noit id d a'
# p special_reverse_string("It's known that CSS means Cascading Style Sheets") == "Stee hsely tsgn IDA csacs Naemsscta Htnwo Nks'ti"

