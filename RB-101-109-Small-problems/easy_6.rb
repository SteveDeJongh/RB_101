# RB101-RB109 Small problems; Easy 6

=begin
1. Revisit Further exploration.

DEGREE = "\xC2\xB0"

def dms(deg)
  degrees = deg.to_i
  minutes = ((deg % 1) * 60).to_i
  seconds = ((((deg % 1) * 60) % 1) * 60).to_i

  p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(76.73)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = 3600

# def dms(degree_float)
#   total_seconds = (degree_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# p dms(30)

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

2.

VOWELS = %(A E I O U a e i o u)

def remove_vowels(string_array)
  string_array.map! do |string|
    index = 0
    output = ''
    while index < string.length
      output << string[index] unless VOWELS.include?(string[index])
      index +=1
    end
    output
  end
end

#or

def remove_vowels2(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

3.

#has trouble with last test? turns out it was due to the .digits method beign very slow. 
#Change to to_s.size for speed.

def find_fibonacci_index_by_length(num)
  fib = 1
  fib_times = 2
  fib_arr = [1,1]
  loop do 
    fib_arr << (fib_arr[-1]+fib_arr[-2])
    fib_times += 1
    break if fib_arr[-1].to_s.size >= num #turns out .digits might be very slow vs to_s.size
  end
  fib_times
end

#works

def find_fibonacci_index_by_length1(num)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= num

    first = second
    second = fibonacci
  end
  index
end


p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

4.

list = [1, 2, 3, 4, 5]

# re-assignment, not actually reverising list.

def reverse_array(array)
  length = array.size
  counter = 0
  new_arr = []

  loop do |x|
    new_arr.prepend(array.shift)
    counter += 1
    break if counter == length
  end
  array = new_arr
end

list = reverse_array(list)
p list

#changes list and uses parral assignment to swap values of right_index and left_index.

list = [1, 2, 3, 4, 5]

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end

reverse!(list)

p list

5.

def reverse!(array)
 length = array.size
 counter = 0
 new_arr = []
 loop do |x|
   break if counter == length
   new_arr.prepend(array[counter]) #shift method is destructive to the original array.
   counter += 1
 end
 new_arr
end

#or

def reverse(array)
  result_arr = []
  array.reverse_each { |x| result_arr << x}
  result_arr
end

#or

def reverse(array)
  rev_arr = []
  array.each do |x|
    rev_arr.prepend(x)
  end
  rev_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# using inject

def reverse(array)
array.inject([], :prepend)
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true

# using each_with_object

def reverse(array)
  array.each_with_object([]) {|i, a| a.prepend(i)}
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true

6.

def merge(arr1, arr2)
  result_arr = []
  arr1.each do |x|
    result_arr << x unless result_arr.include?(x)
  end
  arr2.each do |x|
    result_arr << x unless result_arr.include?(x)
  end
  result_arr.sort
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#or

def merge_uniq(ar1, ar2)
  (ar1 + ar2).uniq
end

p merge_uniq([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#or

def merge_union(arr1, arr2)
  arr1|arr2 # Array#union method, combines two arrays excluding dupliates, maintains original order.
end

p merge_union([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

7.

def halvsies(ar1)
  count = 0
  rarr1 = []
  rarr2 = []
  loop do
    break if count >= ar1.size
    rarr1 << ar1[count] if (count + 1) <= (ar1.length.to_f / 2).round
    rarr2 << ar1[count] if (count + 1) > (ar1.length.to_f / 2).round
    count += 1
  end
  results_arr = [rarr1, rarr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

#or

def halvsies2(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, (array.size - middle))
  [first_half, second_half]
end

p halvsies2([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies2([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies2([5]) == [[5], []]
p halvsies2([]) == [[], []]

8.

def find_dup(array)
  array.find { |x| array.count(x) > 1}
end


p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

9.

def includee?(array, val)
  matching = false
  counter = 0
  while counter < array.length do 
    if array[counter] == val
      matching = true
    end
    counter += 1
  end
  matching
end

#or

def includeer?(array, val)
  !!array.find_index(val) #!! to forse true or false return value.
end

#or

def include?(array, val)
  array.each { |x| return true if x == val}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

10.

def triangle(num)
  counter = num - 1
  start = 1
  num.times do 
    puts "#{(" " * counter)}#{("*" * start)}"
    counter -= 1
    start += 1
  end
end

#triangle(5)
#triangle(10)


# Example:
# ----*
# ---**
# --***
# -****
# *****

#further exploration, print updside down.

def upside_down_triangle(num)
  stars = num
  (num).downto(0) do
    puts "#{("*" * stars)}"
    stars -= 1
  end
end

#upside_down_triangle(5)

# Example:

# *****
# ****-
# ***--
# **---
# *----

# Further exploration. Star method with two paramaters, number of star lines and direction.

def triangle_with_direction(num, dir)
  case dir
  when "up"
    counter = num - 1
    start = 1
    num.times do 
    puts "#{(" " * counter)}#{("*" * start)}"
    counter -= 1
    start += 1
    end
  when "down"
    stars = num
    (num).downto(0) do
    puts "#{("*" * stars)}"
    stars -= 1
    end
  when "right"
    starss = 1
    (num).downto(0) do
    puts "#{("*" * starss)}"
    starss += 1
    end
  when "left"
    spaces = num - 1
    stars = 1
    num.times do
      puts "#{(" " * spaces)}#{("*"*stars)}"
      stars += 1
      spaces -= 1
    end
  end
end

triangle_with_direction(6, "up")
triangle_with_direction(6, "down")
triangle_with_direction(6, "right")
triangle_with_direction(6, "left")

=end
