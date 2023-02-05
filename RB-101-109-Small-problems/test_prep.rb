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
57. Count letters in string
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

def smaller_numbers_than_current(array)
  array.map do |number|
    array.uniq.select do |comp_num|
      number > comp_num
    end.size
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

# Problem 2)
