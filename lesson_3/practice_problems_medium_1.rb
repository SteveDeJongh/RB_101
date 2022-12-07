#Practice Problems medium 1

=begin
1.
10.times do |number| puts ("  " * number) + "The Flintstones Rock!" end

2.
#puts "the value of 40 + 2 is " + (40 + 2) # Outputs error.

# No defined way to convert the integer into a string.

puts "the value of 40 + 2 is " + (40+2).to_s

puts "the value of 40 + 2 is #{40 + 2}"

3.
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(20)

#B1: Number % divisor == 0 is a conditional test to check if the current divisor leaves no remainder and is a factor.
#B2: this rensure the array of factors is what's returned.

4.

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

Both methods have the same return value. However, the first implementation returns a reference to the object passed in as the buffer argument,
 while the second returns a new object. Furthermore, the first implementation mutates the argument given by the buffer argument, while the second does not mutate its input_array argument.
   That is, the code that calls rolling_buffer1 will see a modified array after the method returns, while the code that calls rolling_buffer2 will not see any changes in the array.

It's also worth nothing that Alyssa's first solution both returns a meaning value and has a side effect. 
As we learned earlier, that's something we should avoid. Thus, the second solution is probably the better of the two.

5.

The limit variable is not passed into the method as an argument, or assigned inside the method itself.

Move the variable declaration inside the method, or add it as an argument.

6. P answer - 8
outputs 34

7.
Yes. Spot will find himself in the "dog" house for this one. The family's data is all in shambles now.

Why? Remember that in Ruby, what gets passed to a method isn't the value of the object. 
Under the hood, Ruby passes the object_id of each argument to the method. 
The method stores these object_id's internally in locally scoped (private to the method) variables (named per the method definition's parameter list).

So Spot's demo_hash is pointing to the munsters hash. In this case, the program does not create a new hash for the result -- it just uses the existing hash as-is.
 So the actual hash object that is being messed with inside of the method IS the munsters hash.

8.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

Returns "paper", evaluate teh two seperate inner rps calls first, then 1 layer down, then finally the initall rps call.

9.

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

return "no"

=end
