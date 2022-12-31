# RB101-RB109 - Small Problems - Medium 1

require 'pry'

=begin
1) Rotation (part 1)

def rotate_array1(array)
  result = []
  array.each do |el|
    result << el
  end
  result.push(result.shift)
  result
end

# Or using slice with a range, then appending the first item in the array.

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

7) Word to Digit


=end

# def word_to_digit(string)
#   p string.split(/[^A-Za-z]/)
#   string.split(/[^A-Za-z]/).map! do |word|
#     case word.downcase
#       when "one" then "1"
#       when "two" then "2"
#       when "three" then "3"
#       when "four" then "4"
#       when "five" then "5"
#       when "six" then "6"
#       when "seven" then "7"
#       when "eight" then "8"
#       when "nine" then "9"
#       when "zero" then "0"
#       else             word
#     end
#   end.join(" ")
# end

def word_to_digit(string)
  string.gsub!()
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')# == 'Please call me at 5 5 5 1 2 3 4. Thanks.'