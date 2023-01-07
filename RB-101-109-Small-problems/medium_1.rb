# RB101-RB109 - Small Problems - Medium 1

require 'pry'

=begin
1) Rotation (part 1)

# Using slice with a range, then appending the first item in the array.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further exploration

# String
def rotate_string(string)
  string.empty? ? string : rotate_array(string.split).join(" ")
end

p rotate_string("What's going on!")

p str = "String is the name."
p rotate_string(str)
p str

str1 = ''

p rotate_string(str1)

# Integer

def rotate_int(num)
  rotate_array(num.to_s.split('')).join('')
end

p rotate_int(12345)

1) Rotation (Part 1) (round 2)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => truep

# Further Exploration, write a method to rate a string instead of an array.

def rotate_string(string)
  split_string = string.split(' ')
  rotate_array(split_string).join(' ')
end

string1 = 'This is the string!'

p string1
p rotate_string(string1)
p string1

# Further Exploration, do the same for integers.

def rotate_int(num)
  digits = num.to_s.chars # Could also use .digits, but would then need to reverse it to maintain original digit order.
  rotate_array(digits).join.to_i
end

p rotate_int(1234)

2) Rotation (Part 2)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, dig)
  digits = num.to_s.chars
  left, right = digits[0..-(dig+1)], digits[-dig..-1]
  spun_right = rotate_array(right)
  (left + spun_right).join.to_i
end

#or

def rotate_rightmost_digits1(number, n)
  all_digits = number.to_s.chars # Converts number into an array of string represented digits.
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) #re-assigns the last nth number of elements in the array to the
  # result of the rotate_array method call.
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

2) Rotation (Part 2) (Round 2)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digs)
  digits = number.to_s.chars
  static = digits[0..-(digs + 1)]
  rotate_last_digs = rotate_array(digits[-digs..-1])
  (static+rotate_last_digs).join.to_i
end

# Or re-assigning the last X number of elemenths in the digits array.

def rotate_rightmost_digits(number, digs)
  digits = number.to_s.chars
  digits[-digs..-1] = rotate_array(digits[-digs..-1])
  digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

3) Rotation (Part 3) #revisit further epxloration to keep leading 0s.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, dig)
  digits = num.to_s.chars
  left, right = digits[0..-(dig+1)], digits[-dig..-1]
  spun_right = rotate_array(right)
  (left + spun_right).join.to_i
end

def max_rotation(num)
  count = num.to_s.size
  number = num
  count.times do |iter|
    number = rotate_rightmost_digits(number,(count-iter))
  end
  number
end

#or

def max_rotation1(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

3) Rotation (Part 3) (Round 2)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digs)
  # digits = number.to_s.chars
  number[-digs..-1] = rotate_array(number[-digs..-1])
  # digits.join.to_i
end

def max_rotation(num)
  number_of_digits = num.to_s.length
  digits = num.to_s.chars
  number_of_digits.downto(2) do |x| # Only down to 2 as the last digit does not need to rotate around itself.
    rotate_rightmost_digits(digits, x)
  end
  digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration, a solution to keep zero's.

def max_rotation(integer)
  all_digits = integer.to_s.chars
  integer_size = all_digits.size
  0.upto(integer_size - 1) do |index|
    p all_digits
    removed = all_digits.delete_at(index)
    all_digits << removed
  end
  all_digits.join.to_i
end

p max_rotation(735291) == 321579

4) 1000 Lights

# For Five Lights:
# Initial set up: "Off", "Off", "Off", "Off", "Off"
# First round:    "On", "On", "On", "On", "On"
# Second round:   "On", "Off", "On", "Off", "On"
# Third round:    "On", "Off", "Off", "Off", "On"
# Fourth round:   "On", "Off", "Off", "On", "On"
# Fifth round:    "On", "Off", "Off", "On", "Off"

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}" #mutates last element in the array, preparing for #join.
    arr.join(delimiter)
  end
end

def initialize_switches(count)
  array = []
  (array << "Off") * count
end

def switch_action(switch)
  switch == "Off" ? "On" : "Off"
end

def light_switches(swtch)
  count = swtch.length
  1.upto(count) do |it|
    position = 0
    swtch.map! do |x|
      position +=1
      if (position) % it == 0
        switch_action(x)
      else
        x
      end
    end
  end
end

def on_switches(swtch)
  results = []
  swtch.each_with_index { |switch, i| switch == "On" ? results << i+1 : next }
  results
end

def output_message(onswitches, num)
  on = []
  off = []
  1.upto(num) do |switch|
    if onswitches.include?(switch)
      on << switch
    else
      off << switch
    end
  end
  puts "The on switches are: #{joinor(on, ', ', 'and')}, the off switches are: #{joinor(off, ', ', 'and')}."
end

def toggle_switches(num)
  switches = initialize_switches(num)
  light_switches(switches)
  output_message(on_switches(switches), num)
end

toggle_switches(10)

#or using a hash, best to show witch switches are on/off

def initialize_switches(count)
  switches = {}
  1.upto(count) { |num| switches[num] = "Off"}
  switches
end

def on_switches(switches)
  switches.select { |_position, state| state == "On" }.keys
end

def toggle_every_nth_switch(switch, nth)
  switch.each do |position, state|
    if position % nth == 0
      switch[position] = (state == "Off") ? "On" : "Off"
    end
  end
end

def output_message(onswitches, num)
  on = []
  off = []
  1.upto(num) do |switch|
    if onswitches.include?(switch)
      on << switch
    else
      off << switch
    end
  end
  puts "The on switches are: #{joinor(on, ', ', 'and')}, the off switches are: #{joinor(off, ', ', 'and')}."
end

def toggle_lights(number)
  switches = initialize_switches(number)
  1.upto(switches.size) do |it|
    toggle_every_nth_switch(switches, it)
  end

  output_message(on_switches(switches), number)
end

toggle_lights(10)

5) Diamonds!
1:
*
3:
 *
***
 *
5:
  *
 ***
*****
 ***
  *

# Brute force method.

def diamond(num)
  1.upto(num/2) do |linenum|
    puts "#{' ' * ((num - (linenum + (linenum-1)))/2)}#{'*' * (linenum + (linenum-1))}"
  end
  puts "#{'*'*num}"
  (num/2).downto(1) do |linenum|
    puts "#{' ' * ((num - (linenum + (linenum-1)))/2)}#{'*' * (linenum + (linenum-1))}"
  end
end

diamond(3)
diamond(5)
diamond(7)

#or

def print_row(num, distance_from_center)
  number_of_stars = num - (2 * distance_from_center)
  stars = "*" * number_of_stars
  puts stars.center(num) # centers string in nums width
end

def diamond1(num)
  max_distance = (num - 1)/2
  max_distance.downto(0) { |distance| print_row(num, distance) } # Diamond top and middle row (0).
  1.upto(max_distance) { |distance| print_row(num, distance)} # Diamond bottom
end

diamond1(3)
diamond1(5)
diamond1(7)

# Further Exploration, outline of diamond only.

def print_row1(num, distance_from_center) # longer version of print_row method below, cleaned up using tenary.
  number_of_stars = num - (2 * distance_from_center)
  stars = "*" * number_of_stars
  split_stars = stars.split('')
  outside_stars = []
  length = split_stars.length
  if split_stars.length > 1
    split_stars.each_with_index do |star, i|
      if i == 0 || i == length - 1
        outside_stars << star
      else
        outside_stars << " "
      end
    end
  else 
    outside_stars << stars
  end
  puts outside_stars.join.center(num) # centers string in nums width
end

def print_row(num, distance_from_center)
  number_of_stars = num - (2 * distance_from_center)
  outside_stars = number_of_stars < 2 ? "*" : "*" + ' ' * (number_of_stars - 2) + "*" 
  # Cleaned up if/else statement to turnary.
  puts outside_stars.center(num) # centers string in nums width
end

def diamond2(num)
  max_distance = (num - 1)/2
  max_distance.downto(0) { |distance| print_row(num, distance) } # Diamond top and middle row (0).
  1.upto(max_distance) { |distance| print_row(num, distance)} # Diamond bottom
end

diamond2(3)
diamond2(5)
diamond2(7)

# Creating an array of number of stars, looping of array of integers and printing/centering stars X number of times.

def diamond3(n)
  num_of_stars = ((1...n).to_a + n.downto(1).to_a).select(&:odd?)
  p num_of_stars
  num_of_stars.map { |count| puts ('*'* count).center(n)  }
end

diamond3(7)

# Further Exploration

def diamond_shape(n)
  num_of_stars = ((1...n).to_a + n.downto(1).to_a).select(&:odd?)
  num_of_stars.map do |count|
    pattern = count < 2 ? '*' : '*' + ' ' * (count - 2) + '*'
    puts (pattern).center(n)
  end
end

diamond_shape(7)

6) Stack Machine Interpretation

def minilang1(instructions)
  register = 0
  stack = []
  instructions.split.each do |command|
    case
      when command.to_i.to_s == command then register = command.to_i
      when command == "PUSH" then stack.push(register)
      when command == "ADD" then register += stack.pop
      when command == "SUB" then register -= stack.pop
      when command == "MULT" then register *= stack.pop
      when command == "DIV" then register /= stack.pop
      when command == "MOD" then register %= stack.pop
      when command == "POP" then register = stack.pop
      when command == "PRINT" then p register
    end
  end
end

# Restructured case statement.

def minilang(instructions)
  register = 0
  stack = []
  instructions.split.each do |command|
    case command
      when "PUSH"  then stack.push(register)
      when "ADD"   then register += stack.pop
      when "SUB"   then register -= stack.pop
      when "MULT"  then register *= stack.pop
      when "DIV"   then register /= stack.pop
      when "MOD"   then register %= stack.pop
      when "POP"   then register = stack.pop
      when "PRINT" then p register
      else              register = command.to_i
    end
    #binding.pry
  end
end

p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration (3 + (4 * 5) - 7) / (5 % 3)
# Still need to add error handling for empty stack.

p minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')

7) Word to Digit # Need to revisit, lots of REGEX.

WORDS = %w(one two three four five six seven eight nine zero)
NUMS = %w(1 2 3 4 5 6 7 8 9 0)

WORD_KEYS = WORDS.zip(NUMS).to_h

def word_to_digit(string)
  string.gsub!(/(one|two|three|four|five|six|seven|eight|nine|zero)/) { |match| WORD_KEYS[match]}
end

# Or using key-value pairs from the hash and checking against string

def word_to_digit1(string)
  WORD_KEYS.each do |word, integer|
    string.gsub!(/\b#{word}\b/, integer)
    # "\b" to limit the match to full strings, aoviding "freight" => "fr8" for example.
  end
  string
end

# word_to_digit1('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Further exploration, replace uppercase and capitalized word-numbers as well.

def word_to_digit2(string)
  WORD_KEYS.each do |word, integer|
    string.gsub!(/\b#{word}\b/i, integer)
    # "\b...\b" to limit the match to full strings, aoviding "freight" => "fr8" for example.
    # "/i" to make case-insensitive.
  end
  string
end

# word_to_digit2('Please call me at five Five fIve one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Further exploration, remove spaces between consecutive numbers.

def word_to_digit3(string)
  WORD_KEYS.each do |word, integer|
    string.gsub!(/\b#{word}\b/i, integer)
    # "\b...\b" to limit the match to full strings, aoviding "freight" => "fr8" for example.
    # "/i" to make case-insensitive.
  end
  remove_spaces_between_digits(string)
end

def remove_spaces_between_digits(str)
  WORD_KEYS.values.each do |integer|
    str.gsub!(/#{integer}\s/, integer) #removes single space after a number.
  end
  str
end

p word_to_digit3('Please call me at one two three five Five fIve one two three four. Thanks.') == 'Please call me at 1235551234. Thanks.'

#Further exploration, format 10 digit phone number.

def word_to_digit4(string)
  WORD_KEYS.each do |word, integer|
    string.gsub!(/\b#{word}\b/i, integer)
    # "\b...\b" to limit the match to full strings, aoviding "freight" => "fr8" for example.
    # "/i" to make case-insensitive.
  end
  format_phone(remove_spaces_between_digits(string))
end

def remove_spaces_between_digits(str)
  WORD_KEYS.values.each do |integer|
    str.gsub!(/#{integer}\s/, integer) #removes single space after a number.
  end
  str
end

def format_phone(string)
  string.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1)\2-\3')
end

p word_to_digit4('Please call me at one two three five Five fIve one two three four. Thanks.') #== 'Please call me at (123)555-1234. Thanks.'

8) Fibonacci Numbers (Recursion) # Worth revisiting. #####################

def fibonacci(num)
  return num if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

9) Fibonacci Numbers (Procedural)

def fibonacci(num)
  results = []
  num.times do
    # p results
    if results.empty?
      results << 1
    elsif results.size < 2
      results << 1
    else
      results << results[-1] + results[-2]
    end
  end
  results.last
end

# or

def fibonacci1(num)
  first, last = [1,1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci1(4)
p fibonacci1(20)
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075

10) Fibonacci Numbers (Last Digit)

def fibonacci(num)
  first, last = [1,1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last
end

def fibonacci_last(num) # Struggle with larger numbers
  fibonacci(num).to_s[-1].to_i
end

def fibonacci_last1(num) # Much faster with larger numbers, calculating only the last digit each round.
  last_2 = [1,1]
  3.upto(num) do
    last_2 = [last_2.last, (last_2.first+last_2.last)%10]
  end
  last_2.last
end

p fibonacci_last1(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last1(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last1(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last1(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last1(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last1(123456789) # -> 4

# Further Exploration, speeding up the process by using the sequence of last repeating numbers every 60 fibs.

def fibonacci(num)
  first, last = [1,1]
  3.upto(num) do
    first, last = [last, first + last]
  end
  last
end

FIBONACCI_SEQUENCE = 60.times.to_a.map do |idx|
  num = idx + 1
  fibonacci(num).digits[0]
end

def fibonacci_last2(num)
  nth_fib_num = num % 60
  idx = nth_fib_num - 1
  FIBONACCI_SEQUENCE[idx]
end

p fibonacci_last2(100)
p fibonacci_last2(123456789) # -> 4

=end

# 3) Rotation (Part 3) (Round 2)

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digs)
  # digits = number.to_s.chars
  number[-digs..-1] = rotate_array(number[-digs..-1])
  # digits.join.to_i
end

def max_rotation(num)
  number_of_digits = num.to_s.length
  digits = num.to_s.chars
  number_of_digits.downto(2) do |x| # Only down to 2 as the last digit does not need to rotate around itself.
    rotate_rightmost_digits(digits, x)
  end
  digits.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration, a solution to keep zero's.

def max_rotation(integer)
  all_digits = integer.to_s.chars
  integer_size = all_digits.size
  0.upto(integer_size - 1) do |index|
    p all_digits
    removed = all_digits.delete_at(index)
    all_digits << removed
  end
  all_digits.join.to_i
end

p max_rotation(735291) == 321579
