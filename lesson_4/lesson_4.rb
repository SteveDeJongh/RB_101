# Lesson 4 assignments
=begin

Element Reference:

str = 'The grass is green'

p str[4,5]
#or
p str.slice(4,5)

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']

arr[2] # => "c"

arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
p arr[2, 3] #returns new array: ['c','d','e'], array.slice shorthand.
p arr[2, 3][0] #returns : ['c']

#string.slice returns and string, while array.slice returns an array. 
# Only when referencing a single index does it return the element. ex:

arr = [1, 'two', :three, '4']
arr.slice(3, 1) # => ["4"]
arr.slice(3..3) # => ["4"]
arr.slice(3)    # => "4"

array.fetch(index) can be used instead of element reference (arr[index]) to show an error if index is
outside of the array bouds.

negative numbers in element reference can be used to start from the last element (-1)
in a string or an array.

str = 'ghijk'
arr = ['g', 'h', 'i', 'j', 'k']

str[-6] #returns nil
arr[-6] #returns nil

confirmed by using arr.fetch(-6) # => IndexError, -6 outside of array bounds.

fetch[HASHKEY] can also be used to check if a key value is nil, or if the given key is invalid.

arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]

p arr.to_h #outputs: { name : "joe", age : 10, favorite_color: "blue"} with each key being a symbol.

Element assignment:

str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"

str[6] = 'F'
str[15] = 'C'
str[-4] = 'B'
str[-7] = 'I'
p str

str[index] is a destructive action and str is changed permanently.

arr = [1, 2, 3, 4, 5]
arr[0] += 1 # => 2
arr         # => [2, 2, 3, 4, 5]
arr[1] += 1
arr[2] += 1
arr[-2] += 1
arr[-1] += 1
p arr

This is once again a destructive method.

hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }
hsh[:carrot] = 'vegetable'
hsh[:pear] = 'fruit'
hsh[:broccoli] = 'vegetable'
p hsh

PEDAC Process
P = Understand the problem
E = Exmaples/test cases
D = Data structure
A = Algorithim
C = Code with intent

P, Understanding the problem
Three simple steps:
1. Read the problem description
2. Check the test case, if any.
3. If any part of the problem is unclear, ask the interviewer or problem requester to clarify the matter.

Specifiy input, output and rules (explicit and implicit requirements)

Establish the rules and define the boundaries of the problem.
  Asess available information
  Restate explicity requirements
  identify implciit requirements
spend enoug time, don't rush this step.

Ex: Given a string, produce a new streign with every other word removed

explicit requirements:
  input is a string
  output is a new string
  remove every other word from input string

Questions:
  What do we mean by every other word?
  how do we define a word in this context?
      -Word are delimited by spaces.


# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

Questions:
-What is a palindrome?
-Are they case sensitive?
-Will input always be strings?

Input: a string
output: array of substrings
rules: -every palindrome must be included in the results
       -always return an empty array
       -palindromes are case sensitive



=end

#PEDAC Process

=begin

PEDAC Process
P = Understand the problem

Establish the rules and define the boundaries of the problem.
  Asess available information
  Restate explicity requirements
  identify implciit requirements
spend enoug time, dont rush this step.

Ex: Given a string, produce a new strign with every other word removed

explicit requirements:
  input is a string
  output is a new string
  remove every other word from input string

Questions:
  What do we mean by every other word?
  how do we define a word in this context?
      -Word are delimited by spaces.

E = Exmaples/test cases

- Can confirm or refute assumptions
- Help to answer questions about implciit requirements
- Act as assertions which help to codify the rules and boundaries


D = Data structure

- Help to reason with data more logically
- Help interact with data at implementation level
- Thinking of data structuces is part of the overall problem solving process
- Data structures are closely linked to algorithims
    - set of steps from input to solution
      -involve structuring data in a certain way

A = Algorithims

- A logical sequence of steps for completing a task or objective.
    - Closely linked to data structures
    - Series of steps to structure data to produce the required output
- Stay abstract and high level
    - Avoid implementation detail
    - Dont worry aobut efficiency for now

C = Implementing a solution in Code

- Translating our solution algorithin into code
- Think about the problem in context of the program language
    - Langauge features and constraints
    - Characteristics of data structures
    - Built in functions and methods
    - Syntax and coding patterns
- Create any test cases
- Code with intent

# Final thoughts:
- Not a completely linear process
- Be prepared to move back and forth between the steps.
- Switch from implemenation mode to abstract problem solving mode whe necessary.
- Don't try to problem solve at the code level.

## Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The intergers are grouped in
rows, with the first row containing one integer, the second row two integers, and the thrid row three
integers and so on. Given an integer representing the number of a particular row, return an
integer representing the sum of all integers in that row.

** rules and requirements **

- Sequence of even integers
- Sequence begins with 2
- Integers are consecutive
- Sequence is grouped into rows
- Each row is incrementaly larger than the last: 1, 2, 3,...
- Row 'number' equals num of elements in the row
      - Row 1 has 1 element, row 2 has 2 elements, ...
- Input: single integer
    - Identifies a row, which is a subset of a sequence of integers.
- Output: single integer
    - Sum of integers in a row indentified by the input.

- Sequence:
2,4,6,8,10,12,14,16,18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- How do we create the structure?

** Examples **

row number: 1 --> sum of integers should be 2
row number: 2 --> sum of integers should be 10
row number: 4 --> sum of integers should be 68

** Data Structures **

- Overall structure represents a sequence
- Individual rows within that structure
- Individual rows in a set order in context sequence
- Individual rows contain integers
- Can assume integers are in a set order in the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ...
]

** Algorithim **

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' and add it to the 'rows' array
3. Repeat step 2 until all the neccessary rows are created
  - All the rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum of the final row

** Problem: (step 2) Creat a 'row' **

Rules:
- Row is an array
- Array contains integers
- Integers are consectitive even numbers
- Integers in each row form a part of an overall larger sequence
- Rows are of different lengths

- Input: the information needed to create the output.
  - The starting integer for the row
  - The length of the row
- Output: The row itself ex: '[8, 10, 12]' for 3rd row

Examples:
Start: 2, length: 1 --> [2]
Start: 4, length: 2 --> [4, 6]
Start: 8, length: 3 --> [8, 10, 12]

Data structures:
- An array of integers

Algorithim:
1. Create empty row to contain integers
2. Add starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. repeat steps 2 and 3 until the array has reached the correct length
  #start the loop
    - Add start integer to the row
    - Increment the starting integer by 2
    - break out of the loop if length of row is equals row_length
5. Return the array


** Impletenting a solution in Code

solution.rb

# [
#   [2],
#   [4, 6],
#   [8, 10, 12],
#   [14, 16, 18, 20],
#   ...
# ]

# Calcuating the start integer:
# rule: first integer of row == last integer of precedign row + 2
# Algorithim:
# - Get the last row of the rows array
# - Get last integer of that row
# - Add 2


def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  return rows.last.sum
end

def sum_even_number_row_loop(row_number)
  rows = []
  row_length = 1
  steps 2 & 3
  loop do
    #rows << create_row(row_length)
    p row_length
    break if row_length == row_number
    row_length += 1
    #break if rows.length == row_number
  end
  return rows #TODO: sum the final row and return the sum.
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop  do 
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  return row
end

# row number: 1 --> sum of integers should be 2
# row number: 2 --> sum of integers should be 10
# row number: 4 --> sum of integers should be 68

p sum_even_number_row(1) == 2 # True
p sum_even_number_row(2) == 10 # True
p sum_even_number_row(4) == 68 # True

# Start: 2, length: 1 --> [2]
# Start: 4, length: 2 --> [4, 6]
# Start: 8, length: 3 --> [8, 10, 12]

# p create_row(2, 1) == [2] # True
# p create_row(4, 2) == [4, 6] # True
# p create_row(8, 3) == [8, 10, 12] # True

########################################## Selection and transformation ################################

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruits(list)
  hash_keys = list.keys
  counter = 0
  results_hash = Hash.new

  loop do
    break if counter == hash_keys.size

    curr_key = hash_keys[counter]
    current_value = list[curr_key]

    if current_value == "Fruit"
      results_hash[curr_key] = current_value
    end

    counter += 1
  end
  results_hash
end

#or

def select_fruit(hash)
  results_hash = Hash.new
  hash.each do | k, v|
    if v == "Fruit"
      results_hash[k] = v
    end
  end
  results_hash
end


p select_fruits(produce)
p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

#method def that mutates the caller, number

def double_numberse!(numbers)
  numbers.map! do |num|
    num = num * 2
  end
end

p my_numbers = [1, 4, 3, 7, 2, 6]
p double_numberse!(my_numbers)
p my_numbers


#method def that mutates the caller again, number
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers
end


p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
#my_numbers                      # => [1, 4, 3, 7, 2, 6]

# Exercise for the reader: What if we wanted to transform the numbers based on 
# their position in the array rather than their value?

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

p my_numbers = [1,4,3,7,2,6]
p double_odd_indices(my_numbers)

def multiply(numbers, multiplier)
  result_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    result_numbers << current_number * multiplier

    counter += 1
  end

  result_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

def select_letter(sentence, character)
  selected_chars = ''
  counter = 0

  loop do
    break if counter == sentence.size
    
    current_char = sentence[counter]

    if current_char == character
      selected_chars << current_char
    end
    counter += 1
  end
  selected_chars
end

p select_letter("What is his name!", "h").size

################################ The #each, #map, and #select methods. ################################

Notes in Notion.

#################################### More Methods ################################

#any?
#all?
#each_with_index
#each_with_oject()
#first
#include?
#partition

################################## Praactice Problems: Methods and More Methods ########################

Methods_and_more_methods.rb

################################## Practice Problems: Additonal practice #################################

Additional_practice.rb

###################################


=end
