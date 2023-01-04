# Small problems - Easy 2

=begin

1) How old is Teddy?

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Or

def name_and_age
  puts "=> Enter a name!"
  name = gets.chomp
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

2) How big is the room?

def room_size
  puts "==> Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "==> Enter the width of the room in meters:"
  width = gets.chomp.to_f
  area_meters = length * width
  area_feet = area_meters * 10.7639
  puts "==> The area of the room is #{area_meters} square meters (#{area_feet.round(2)} square feet)."
end

room_size

# Further exploration, input measurements in feet and results in square feet, inches, and CM.

def room_size_in_feet
  puts "==> Enter the length of the room in feet:"
  length = gets.chomp.to_f
  puts "==> Enter the width of the room in feet:"
  width = gets.chomp.to_f
  area_feet = (length * width).round(2)
  area_inches = (area_feet * 144).round(2)
  area_cm = (area_feet * 929.03).round(2)
  puts "==> The area of the room is #{area_feet} square feet" + \
       " (#{area_inches} square inches, and #{area_cm} square cm."
end

room_size_in_feet

3) Tip Calculator

def prompt(message)
  puts "==> #{message}"
end

def tip_calculator
  prompt "What is the bill?"
  bill = gets.chomp.to_f

  prompt "What is the tip percentage?"
  percentage = gets.chomp.to_f

  tip = (bill * (percentage / 100)).round(2)
  total = (bill + tip).round(2)

  puts "The tip is $#{format("%0.2f", tip)}."
  puts "The total is $#{format("%0.2f", total)}."
end

tip_calculator

4) When will I Retire?

puts "=> What is your age?"
age = gets.to_i

puts "=> What age would you like to retire?"
retirement_age = gets.to_i

years_to_retirement = retirement_age - age
year = Time.now.year
retirement_year = year + years_to_retirement

puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} more years of work to go!"

5) Greeting a user

puts "=> What is your name?"
name = gets.chomp

if name.end_with?('!')
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# using element reference instead of end_with? 

puts "What is your anme?"
name = gets.chomp

if name[-1] == '!'
  name = name.chop()
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

6) Odd Numbers

value = 1
while value <= 99
  puts value
  value += 2
end

# Or

(1..99).each do |num|
  if num.odd?
    p num
  else
  end
end

# Or

1.upto(99) do |num| 
  puts num % 2 != 0 ? num : next
end

7) Even Numbers

array = (1..99).to_a

array.select do |num|
  puts num.even? ? num : next
end

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

8) Sum or Product of Consecutive Integers

puts "=>Please enter an integer graeter than 0:"
user_num = gets.chomp.to_i

puts "=>Enter 's' to compute sum, 'p' to compute the product."
operation = gets.chomp

if operation.downcase == 's'
  value = 0
  result = 0
  while value <= user_num
    result += (value)
    value += 1
  end
  puts "The sum of the integers between 1 and #{user_num} is #{result}."
elsif operation.downcase == 'p'
  value = 1
  result = 1
  while value <= user_num
    result = (result * value)
    value += 1
  end
  puts "The product of the integers between 1 and #{user_num} is #{result}."
end

# other ways to compute sum and product

def compute_sum(number)
  total = 0
  1.upo(number) { |value| total += value}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |vlaue| total *= value}
  total
end

#with inject

def compute_sum(number)
  sum = (0..number).reduce(:+)
end

def compute_product(number)
  product = (1..number).inject { |product, n| product * n}
end

if operation.downcase == 's'
  sum = compute_sum(user_num)
  puts "The sum of the ingerers between 1 and #{user_num} is #{sum}."
elsif operation.downcase == 'p'
  product = compute_product(user_num)
  puts "The product of the ingerers between 1 and #{user_num} is #{product}."
end

9) String Assignment
Output:
BOB
BOB

String#upcase! mutates name in place, the value that save_name references.

10) Always return negative

def negative(num)
  if num == 0
    num
  elsif num.to_s[0] == "-"
    num
  else
    -num
  end
end

# Or

def negative(num)
  num > 0 ? -num : num
end

# Or using abs, which returns the numbers absolute value.

def negative(num)
  -num.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

=end