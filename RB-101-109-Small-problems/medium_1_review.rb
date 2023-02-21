####### RB 101-109 - Small Problems Medium 1 review with PEDAC practice ######

=begin

# 1) Rotation (Part 1)

Problem:
Input: array
Output: An array with the first element moved to the last index.

Rules:
Should not mutate the orignal array, instead returns a new array.
Single element arrays are returned as is.
Don't use #rotate, or #rotate!

Examples:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

Data:
An array

Algorithm:

define method `rotate_array` with parameter `arr`
Initialize a `result` variable assigned to the elements from index 1 to -1 (last) of passed in `arr`
Append `result` variable the contents of parameter `arr`'s first element
return result variable

Code:

def rotate_array(arr)
  result = arr.slice(1..-1)
  result.push(arr[0])
  result
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1,2,3]
p x
p rotate_array(x)
p x

# Alternate syntax without reassignment

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# 2) Rotation (Part 2)

Problem:
Input: a multi digit number, and an int representing the number of digits to rotate.
Output: a rotated multi digit number

Rules:
Rotate n number of digits in multi digit number.
If rotate number is 1, return original number.
Multi digit number is always positive.

Examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Data:
integer number converted to an array of digits.

Algorithm:
start
define `rotate_rightmost_digits` with parameters `num`, and `num_of_digits`.
return `num` if `num_of_digits` is 1. # ends up not being needed.
convert `num` to a string
initialize `first` to represent portion of string not rotating
intialize `last` to represent portion of string to rotate
call rotate_array on characters in `last` and convert back to string
combine `first` and `last` and convert back to int.
end

Code:

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, num_of_digits)
  return num if num_of_digits == 1
  snum = num.to_s
  first = snum.slice(0..-(num_of_digits + 1))
  last = rotate_array(snum.slice(-num_of_digits..-1).chars).join('')
  (first+last).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

# Alt solution

def rotate_right_most_digits(num, n)
  all_digits = num.to_s.chars
  # Converts `num` to a string, then an array of all of it's characters.
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  #reassigns the last `nth` portions of `all_digits` array to the return value of `rotate_array`
  # called on the same array portion.
  all_digits.join.to_i
  # returns array of digits joined and converted back to int.
end

# 3) Rotation (Part 3)

Problem:
Input: integer
Output: integer will all digits rotated.

Rules:
Leading 0's can be dropped.

Examples:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Data:
Integer

Algorithm:
define max_rotation method with one parameter `num`
initialize variable `rotated_string` and assign it the initial value of `num` converterted to string
initalize `times` variable to `rotated_string`.length
call rotate_rightmost_digts (`times`) times and assign block parameter `x`
  reassign `rotated_string` to the return value of `rotate_rightmost_digits` with rotated_string and `x` passed in
return `rotated_string` converted to int

Code:
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, num_of_digits)
  return num if num_of_digits == 1
  snum = num.to_s
  first = snum.slice(0..-(num_of_digits + 1))
  last = rotate_array(snum.slice(-num_of_digits..-1).chars).join('')
  (first+last).to_i
end

def max_rotation(num)
  times = num.to_s.length
  times.downto(2) do |x|
    num = rotate_rightmost_digits(num, x)
  end
  num.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# 4) 1000 lights

Problem:

Input: int representing number of lights
output: array of light numbers left "on"

Rules:
Lights are initially turned "on" in round 1
From 1 to number of lights, you toggle the switch of every nth light.

Data:
Integer
array of switches

Algorithm:

define switches method with parameter `num`
initialize an array `lights`
add to `lights` array `num` of switches in the `off` position.
loop `num` times, keeping track of current num
  toggle every `current num`'s switch
iterate over all switches making note of which light is in the "on" position.
return array of switch numbers in the `on` position

Code:
def switches(num)
  lights = []

  num.times { |_| lights << 'off'} # Creates initial switches, places them in `lights`.

  1.upto(lights.size) do |x| # Toggles every nth switch.
    index = x - 1
    loop do
      break if index >= num
      lights[index] == "off" ? lights[index] = "on" : lights[index] = "off"
      index += x
    end
  end

  on_lights = []

  lights.each_with_index do |light, index| # Gets "on" light switch posiitons.
    if light == "on"
      on_lights << (index + 1)
    end
  end

  on_lights  
end

p switches(5)
p switches(10)
p switches(10)

# or using a hash and it's keys.

def initialize_lights(num_of_lights)
  lights = Hash.new
  1.upto(num_of_lights) {|key| lights[key] = "off" }
  lights
end

def toggle_every_nth_switch(iteration, lights)
  num = iteration
  loop do
    break if num > lights.size
    lights[num] == "off" ? lights[num] = "on" : lights[num] = "off"
    num += iteration
  end
  lights
end

def find_on_switches(lights)
  lights.select {|_key, val| val == "on"}.keys
end

def switches(num_of_lights)
  lights = initialize_lights(num_of_lights)
  1.upto(lights.size) do |iteration|
    lights = toggle_every_nth_switch(iteration, lights)
  end
  
  find_on_switches(lights)
end

p switches(5)
p switches(10)
p switches(1000)

# 5) Diamonds! # Practice algorithm again on FE.

Problem:
Input: integer number
Output: text field of `*` characters.

Rules:
Diamond must have 4 points
diamond must have n x n grid
integer provided will always be odd

Examples:

# diamond(3)

#  *
# ***
#  *

Data: integer
rows of strings

Algorithm:

define `diamond` method which takes `num`, an odd number as an argument representing the number rows of diamonds
calculate number of rows above and below max width (num)
  as num is odd, we can divide by 2
create top rows x number of times until middle row
create middle row
create bottom rows x number of times
end

Code:
def diamond(num)
  rows = num / 2
  puts " "
  top_stars = 1
  rows.downto(1) do |top_spaces|
    puts "#{" " * top_spaces}#{'*' * top_stars }"
    top_stars += 2
  end
  puts "#{'*' * num}"
  bottom_stars = num - 2
  1.upto(rows) do |bottom_spaces|
    puts "#{' ' * bottom_spaces}#{'*' * bottom_stars}"
    bottom_stars -= 2
  end
  puts " "
end

diamond(9)

# Alternatively, using center instead of calculating spaces.

def print_row(grid_size, distance)
  num_of_stars = grid_size - (2 * distance)
  stars = '*' * num_of_stars
  puts stars.center(grid_size)
end

def diamond2(num)
  distance = num / 2
  distance.downto(0) {|row| print_row(num,row)}
  1.upto(distance) {|row| print_row(num, row)}
end

diamond2(9)

# Alternatively, creating an array of number of stars/row

def diamond3(num)
  number_of_stars = (1.upto(num) + (num - 1).downto(1)).to_a.select(&:odd?)

  number_of_stars.each do |stars|
    puts "#{'*' * stars}".center(num)
  end
end

diamond3(9)

# 6) Stack Machine Interpretation


# 7) Word to Digit ( 7 minutes )

# Problem:
# Input: string
# Output: string
# Rules:
  # convert all word numbers to digits in input string.
  # 

# Examples:
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Data:
# Strings

# Algorithm:
define `word_to_digit` method with 1 parameter `input`
  initialize array of digit words
  iterate over each word in word array
    sub all instances of that word in teh input string with the index of the word
  return string
end

=end

# WORD = %w(zero one two three four five six seven eight nine)

# def word_to_digit(input)
#   string = input
#   WORD.each_with_index do |x, idx|
#     string = string.gsub(/\b#{x}\b/i, idx.to_s)
#   end
#   string
# end

# p word_to_digit('Please call me at FIVE five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# 8) Fibonacci Numbers (3:24)

# Problem:
# Input: integer
# Output: integer
# Rules:
  # Fibonacci sequence is generated by adding the the two previous numbers together. The first two digits are 1
  # 

# Algorithm:
# define `fibonacci` with 1 parameter `nth`
#   initialize n to 1
#   return n if nth == 1
#   reassign n to the sum of n + fibonnaci(n) `nth` times
# end

# Code:

# def fibonacci(num)
#   return 1 if num <= 2
#   fibonacci(num - 1) + fibonacci(num - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765