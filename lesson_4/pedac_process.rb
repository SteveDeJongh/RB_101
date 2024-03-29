#Pedac Process

=begin

PEDAC Process
P = Understand the problem

Establish the rules and define the boundaries of the problem.
  Assess available information
  Restate explicit requirements
  identify implicit requirements
spend enough time, don’t rush this step.

Ex: Given a string, produce a new string with every other word removed

explicit requirements:
  input is a string
  output is a new string
  remove every other word from input string

Questions:
  What do we mean by every other word?
  how do we define a word in this context?
      -Word are delimited by spaces.

E = Examples/test cases

- Can confirm or refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

D = Data structure

- Help to reason with data more logically
- Help interact with data at implementation level
- Thinking of data structures is part of the overall problem solving process
- Data structures are closely linked to algorithms
    - set of steps from input to solution
      -involve structuring data in a certain way

A = Algorithms

- A logical sequence of steps for completing a task or objective.
    - Closely linked to data structures
    - Series of steps to structure data to produce the required output
- Stay abstract and high level
    - Avoid implementation detail
    - Don’t worry about efficiency for now

C = Implementing a solution in Code

- Translating our solution algorithm into code
- Think about the problem in context of the program language
    - Language features and constraints
    - Characteristics of data structures
    - Built in functions and methods
    - Syntax and coding patterns
- Create any test cases
- Code with intent

# Final thoughts:
- Not a completely linear process
- Be prepared to move back and forth between the steps.
- Switch from implementation mode to abstract problem solving mode when necessary.
- Don't try to problem solve at the code level.

## Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in
rows, with the first row containing one integer, the second row two integers, and the third row three
integers and so on. Given an integer representing the number of a particular row, return an
integer representing the sum of all integers in that row.

** rules and requirements **

- Sequence of even integers
- Sequence begins with 2
- Integers are consecutive
- Sequence is grouped into rows
- Each row is incrementally larger than the last: 1, 2, 3,...
- Row 'number' equals num of elements in the row
      - Row 1 has 1 element, row 2 has 2 elements, ...
- Input: single integer
    - Identifies a row, which is a subset of a sequence of integers.
- Output: single integer
    - Sum of integers in a row identified by the input.

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
- Individual rows in a set order in context of sequence
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
    - break out of the loop if length of row equals row_length
5. Return the array


** Impletenting a solution in Code

solution.rb

=end

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