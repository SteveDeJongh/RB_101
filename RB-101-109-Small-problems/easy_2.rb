# Small problems - Easy 2

=begin

1.
def name_and_age
  puts "=> Enter a name!"
  name = gets.chomp
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

2.
def room_size
  puts "=> Enter the length of the room in meters:"
  length = gets.chomp.to_i
  puts "=> Enter the width of the room in meters:"
  width = gets.chomp.to_i
  areameters = (length * width).round(2)
  areafeet = (areameters.to_f * 10.7639).round(2)
  puts "The are of the room is #{areameters} square meters (#{areafeet} square feet)."
end

room_size

or

Input chages to feet, display in square feet, inches and square cm.

puts "=> What is the rooms width in feet?"
widthfeet = gets.chomp.to_f

puts "=> What is the rooms length in feet?"
length = gets.chomp.to_f

squarefeet = (widthfeet * length).round(2)

squareinches = (squarefeet * 144).round(2)

squarecm = (squareinches * 6.4516).round(2)

puts "The are of the room is #{squarefeet} Square feet, " + \
     "#{squareinches} Square inches, and #{squarecm} Square Centimeters."


name_and_age

3.
def prompt(message)
  puts "==> #{message}"
end

prompt("What is the bill?")
bill = gets.chomp.to_f

prompt('What is your desired tip percentage?')
tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent/100))
total = bill + tip

prompt("The tip is $#{format("%0.2f", tip)}")
prompt("The total bill is $#{format("%0.2f", total)}.")

4.
puts "=> What is your age?"
age = gets.chomp.to_i

puts "=> What age would you like to retire?"
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - age
year = Time.new.year
retirement_year = year + years_to_retirement

puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} more years of work to go!"

5.
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

6.
(1..99).each do |num|
  if num.odd?
    p num
  else
  end
end

# or

1.upto(99) do |num| 
  puts num % 2 != 0 ? num : next
end

7.
array = (1..99).to_a

array.select do |num|
  puts num.even? ? num : next
end

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

8.
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

9.
BOB BOB

10.



=end 

