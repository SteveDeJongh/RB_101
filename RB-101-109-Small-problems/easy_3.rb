# Small Problems Easy 3

=begin
1.
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

2.
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

3.

def prompt(message)
  puts "=> #{message}"
end

prompt("Please write word or multiple words:")
string = gets.chomp
string_characters = string.delete(" ").length
prompt("There are #{string_characters} in \"#{string}\".")

4.
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

5.

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

def nth(num,n)
  init_num = num
  while n > 1 do
    num = multiply(init_num, num)
    n -= 1
  end
  num
end

puts nth(2,4)

6.
def xor1? (val1, val2)
  if val1 == true && val2 == false
    return true
  elsif val1 == false && val2 == true
    return true
  else 
    return false
  end
end

#cleaner

def xor? (val1, val2)
  return true if val1 && !val2
  return true if val2 && !val1
  false
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

7.
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

8. (further exploration worthy of a revisit)

def palindrome?(string)
  return true if string.reverse == string
  false
end

p palindrome?("madam")
p palindrome?("Madam")

def arr_same?(arr)
  return true if arr.reverse == arr
  false
end

p arr_same?([1,2,3,2,1])
p arr_same?("madam")

9.
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

10. (revisit further eploration)

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)

=end

