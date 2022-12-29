# RB101-RB109 - Small Problems - Medium 1

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

4)


=end