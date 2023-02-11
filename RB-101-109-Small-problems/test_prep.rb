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
8.Repeated Substring
x 9.Typoglycemia Generator (Hard! Revisit if possible.)
10.Most frequently used words in a text]
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
22. Scramblies
23. Longest alphabetical substring
24. The Hashtag Generator
25. Pete, the baker
26. Mean Square Error
27. Exponent method
28. Where my anagrams at?
29. Split Strings
30. Anagram difference
31. Anagram Detection
32. Highest Scoring Word
33. Replace With Alphabet Position
34. Sherlock on pockets
35. Mexican Wave
36. Delete a Digit
37. Multiples of 3 or 5
38. String transformer
39. Largest product in a series
40. Duplicate Encoder
41. Backspaces in string
42. Sort Arrays (Ignoring Case)
43. Transform To Prime
44. Counting Duplicates
45. Alphabetized
46. Sum of Digits / Digital Root
47. Array.diff
48. Where is my parent!?(cry)
49. Playing with digits
50. Equal Sides Of An Array
51. Reverse or rotate?
51. Decipher this!
52. Bouncing Balls
53. WeIrD StRiNg CaSe
54. Are they the "same"?
55. Grouping and Counting
56. Find the Nexus of the Codewars Universe
x 57. Count letters in string
58. Triple trouble
59. Which are in?
60. Format a string of names like 'Bart, Lisa & Maggie'.
61. Find the missing letter
62. Who likes it?
63. Find The Parity Outlier
64. Is Integer Array?
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