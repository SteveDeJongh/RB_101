# Practice loops #2

=begin
1.

count = 1

loop do
  if count.odd? == true
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

2.

loop do
  number = rand(100)
  puts number
  break if (0..10).include?(number)
end

#or 

loop do
  number = rand(100)
  puts number

  if number.between?(0,10)
    break
  end
end

3.

process_the_loop = [true, false].sample

if process_the_loop == true
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processsed!"
end


4.

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

5.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input # or numbers.push(input)
  break if numbers.length == 5
end
puts numbers

6.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   break if names.length == 0
#   puts names[0]
#   names.shift
# end

#or

loop do
  puts names.shift
  break if names.empty?
end


7.

5.times do |index|
  puts index
  break if index == 2 #breaks from loop when index == 2
end

8.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

9.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a < 5 && number_b < 5 # or next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

10.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

# number_of_greetings.times do
#   greeting
# end

#or

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

=end
