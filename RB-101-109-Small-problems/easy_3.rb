# Small Problems Easy 3

=begin
1) Searching 101
numbers = []

puts "=>Enter the 1st number:"
numbers << gets.chomp.to_i

puts "=>Enter the 2nd number:"
numbers << gets.chomp.to_i

puts "=>Enter the 3rd number:"
numbers << gets.chomp.to_i

puts "=>Enter the 4th number:"
numbers << gets.chomp.to_i

puts "=>Enter the 5th number:"
numbers << gets.chomp.to_i

puts "=>Enter the last number:"
last_num = gets.chomp.to_i

puts numbers

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else
  puts "The number #{last_num} appears in #{numbers}."
end

2) Arithmic Integer

puts "Enter the first number:"
first_num = gets.chomp.to_i

puts "Enter the secod number:"
second_num = gets.chomp.to_i

puts "#{first_num} + #{second_num} = #{first_num+second_num}"
puts "#{first_num} - #{second_num} = #{first_num-second_num}"
puts "#{first_num} * #{second_num} = #{first_num*second_num}"
puts "#{first_num} / #{second_num} = #{first_num/second_num}"
puts "#{first_num} % #{second_num} = #{first_num%second_num}"
puts "#{first_num} ** #{second_num} = #{first_num**second_num}"

3) Counting the Number of Characters

def prompt(message)
  puts "=> #{message}"
end

prompt("Please write word or multiple words:")
string = gets.chomp
string_characters = string.delete(" ").length
prompt("There are #{string_characters} in \"#{string}\".")

4) Multiplying Two Numbers

def prompt(message)
  puts "=> #{message}"
end

def multiply(num1, num2)
  num1 * num2
end

prompt"Enter you first number:"
number_1 = gets.chomp.to_f

prompt"Enter your second number:"
number_2 = gets.chomp.to_f

result = multiply(number_1, number_2)

prompt"The result of #{number_1} * #{number_2} is #{result}."

# Further Exploration, what happens if the first argument is an Array.

With Array multiplication, the element(s) are repeated inside of the array. 
The repated elements reference the same objects as their originals.
e.g. multiply([a,b],2) = [a,b,a,b]

arr[1].upcase! will modify all B elements.

5) Squaring an Argument

def prompt(message)
  puts "=> #{message}"
end

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num,num)
end

square(5) == 25
square(-8) == 64

# Further exploration, "power to the nth"

def power_to_the_nth(num, power)
  power = power
  result = num
  while power > 1 do 
    result *= num
    power -= 1
  end
  result
end

p power_to_the_nth(2,3)

6) Exclusive Or

def xor1? (val1, val2)
  if val1 == true && val2 == false
    return true
  elsif val1 == false && val2 == true
    return true
  else 
    return false
  end
end

# Cleaner solution:

def xor? (val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
  false
end

# Or

def xor?(val1, val2)
  !!((val1 && !val2) || (val2 && !val1)) # '!!' forces teh return value to a boolean.
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

7) Palindromic String (Part 1) (further exploration worthy of a revisit)

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Further Exploration, determine wether an array is a palindrome.

def palindrome_array?(array)
  array == array.reverse
end

p palindrome_array?([1,2,3,2,1]) == true

# Further Exploration, write a method that determines whether an array or a string is palindromic.

def palindrome_all?(input)
  input == input.reverse
end

p palindrome_all?('madam') == true
p palindrome_all?([1,2,3,4,2,1]) == false

8) Palindromic String (Part 2)

ALPHANUMERIC = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5
  6 7 8 9 0)

def palindrome?(input)
  input == input.reverse
end

def ins_palindrome?(test)
  clean_string = String.new
  test.downcase.each_char { |char| clean_string << char if ALPHANUMERIC.include?(char) }
  palindrome?(clean_string)
end

p ins_palindrome?("Madam, I'm Adam")

# Or using delete

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

p real_paldinrome?("Madam, I'm Adam")

9) Palindromic Numbers (revisit further eploration)

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)

10) Uppercase Check

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

Extra )

def oddities(arr)
  new_arr = []
  while arr.length > 0 do
    new_arr << arr.shift
    arr.shift
  end
  return new_arr
end

oddities([1,2,3,4,5])

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]

def evenies(arr)
  even_nums = []
  index = 1
  while index < arr.length
    even_nums << arr[index]
    index += 2
  end
  even_nums
end

p evenies([1,2,3,4,5])

=end

