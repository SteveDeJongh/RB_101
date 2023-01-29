#Practice Loops #1

=begin
1.

loop do
  puts 'Just keep printing...'
  break #add break to exit loop after first iteration.
end

2.

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break #break iner loop
  end
  break #break outer loop.
end

puts 'This is outside all loops.'

3.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5 #add break condition to exit after loop has executed 5 times.
end

4.

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes' #added break condition once user enters yes.
  puts 'Incorrect answer. Please answer "yes".' #String only shows if answer is not yes.
end

5.

say_hello = true
count = 0 #added to count iterations

while say_hello
  puts 'Hello!'
  count += 1 #increasing count every iteration
  say_hello = false if count == 5 # maintaining falsey state until count == 5
end

#there are better ways to control this loop. .times, or a simply counter that doesn't swap the truthy/falsey value


6.

numbers = []

while numbers.length < 5
  numbers << rand(0..99)
  # ...
end

p numbers

7.

count = 1

until count > 10
  puts count
  count += 1
end

8.

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.length
  puts numbers[count]
  count += 1
end

9.

for i in 1..100
  puts i if i.odd? == true
end


10.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends
  puts "Hello, #{i}!"
end

=end

#### Looping practice, Loops 1

=begin
#1) Runaway loop

loop do
  puts 'Just keep printing...'
  break
end

#2) Loopception

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

#3) Control the Loop

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

#4) Loop on Command

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

#5) Say Hello

say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello =  false if count == 5 
end

5.times do 
  puts "Hello!"
end

#6) Print While

numbers = []

while numbers.size < 5
  numbers << rand(0..99) # or rand(100)
end

puts numbers

#7) Count Up

count = 1

until count > 10
  puts count
  count += 1
end

#8) Print Until

numbers = [7, 9, 13, 25, 18]

count = 0
until count == numbers.size
  p numbers[count]
  count += 1
end

#9) That's Odd

for i in 1..100
  puts i if i.odd?
end

#10) Greet Your Friends

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for i in friends do
  puts "Hello, #{i}!"
end

=end