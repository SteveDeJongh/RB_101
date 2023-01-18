=begin
RB101 Exercise Database:

RB109 Written
Additonal Practice Problems:
DONE 1, Colection Method from Lesson 4
DONE 2, Ruby Basics: Variable Scope
DONE 3, Ruby Basics: Return

RB101 Written Questions:

Suggested response format (based on feedback from other students & Srdjan’s blog post):

- **What does the code output? What are the return values?**
- **Answer the why behind the output/return:**
    - Focus only on the lines of code that deliver the output and return values.
- **Summarize what the problem demonstrates and why: This problem demonstrates the concept of 
local variable scope/etc…**
    - This can be at the beginning or end of your answer - personal preference.

**Using Markdown: use `backticks` (Markdown formatting) to highlight variable names, 
 methods, and lines you are referring to:** On `line 1` we initialize the local variable…

**Always aim to answer: What does the following code output and return? Why? What concept does
 it demonstrate?**

 ############################################ Local Variable Scope ########################################

# Example 1)

a = 'Hello'
b = a
a = "Goodbye"

puts a
puts b

# The code `puts a` will output `Goodbye` and return `nil`, while the code `puts b` will output `Hello` and return `nil`.
# This is a great example of variables as pointers to objects. Local variable `a` is assigned to the string object `Hello`.
# Then, local variable `b` is assigned to the object pointed to by local variable `a`, `a` is then re-assigned to the string
# object `Goodbye`. Local variable `b` still point to the same string object `Hello` and that it was it onput for the 
# `puts b` method invocation.

# Example 2)

a = 4

loop do
  a = 5
  b = 3

  break
end

puts a
puts b

# This code will output `5` and return `nil`, and then return an error for the `puts b` method invocation. This is due to 
# the blocks scope. A variable defined outside the block can be accessed and modified from within the block, however a 
# variable defined inside the block can not be accessed from outside the block. In order for `puts b` to return `3`,
# the variable `b` first needs to be defined outside the block.

# Example 3)

a = 4
b = 2

loop do
  c = 3 
  a = c 
  break
end

puts a
puts b

# The code will output `3` and `2` along with two return values of `nil`. The variable `a` re-assignment to block variable
# `c` is still visible outside the block as the re-assignment passes the variables object, rather than the variable itself.
# Both variable `a` and `b` are defined outside of the block and therfor able to be modified within the block, and visible 
# to the `puts` method calls. This code shows the concept of variables as pointers, and block variable scope.

# Example 4)

def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')

# This code will output the string `hello` 3 times, and return `nil` once. The `example` method is invoked with the string
# `hello` passed in as an argument. The `example` method definition has a parameter named `str`, this local parameter is
# used within the method's loop and output through the `puts` method call. The loop occurs 3 times and in method variable
# `i` is assigned to `3`. This variable serves as the iterator, and is re-assigned to `i - 1` every iteration of the loop.
# The loop itself has a break condition that is met once variable `i` is equal to `0`. As the loop is the last line in the
# method definiton, `nil` is passed as the return value to `example`.

# Example 5)

def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"
greetings(word)

# This code will output `Hello` `Goodbye`, and return `nil`. The local variable `word` is assigned to the string object
# `Hello`. The variable `word` is then passed to the method invocation `greetings` as an argument. Inside the `greetings`
# method definiton, the method defines it's paramter as `str`. This parameter is then passed to the `puts` method invocation.
# This method invocation prints the contents of paramter `str`, assigned to local variable `word`. The seconds `puts`
# method invocation prints the string `Goodbye`. As this is the last line in the method definition, the `greetings` method
# returns `nil`.

# Example 6)

arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"

# The code will output `Your total is 10` and returns `nil`. This example shows loop iteration, and variable re-assignment
# within a loop. Three local variables are initially assigned, `arr` to the array object [1,2,3,4], `counter` to 0, and
# `sum` to 0. The loop then begins iterating, the value of `sum` is re-assigned to the value of `sum` + the value at 
# arr[counter], counter is equal to 0, so the element retrieved from the `arr` array is the element at index 0 which is the
# integer `1`. Sum is now equal to 1. The counter is then incremented by 1, and the loop repeats until the counter is
# incremented to the array size, which is 3. At this point, sum is equal to 10, and is injected into the resulting string
# of the `puts` method call via string interpolation. This prints `Your total is 10` and as `puts` always returns nil,
# that is what gets returned.

# Example 7)

a = 'Bob'

5.times do |x| 
  a = "Bill"
end

p a

# This code will output `Bill` and return `Bill`. Local variable `a` is assigned to the string object `Bob`. The method
# `times` is the called on the int `5`, and passed a block with a parameter `x` as an argument. Inside the block, local
# varaible `a` is re-assigned to the string object `Bill`. This re-assignment happens 5 times, once each iteration of the
# block. The `p` method is then call with `a` as an argument, this prints the varialbe `a`'s string object `Bill`, and
# returns the value of `a` `bill` as well. The example shows how variables defined outside of blocks are visible to code
# within a block.

# Example 8)

animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

# This code will output `cat`, and return `nil`, before throwing an error for the second `puts` method call. This is due
# to variable scoping rules in relation to blocks. As the variable `animal` is defined in the outer scope, it is visible
# to the inner blocks scope and changes made within the block affec the outer scope variable. This allows the `animal`
# variable to be re-assigned to the string value `cat` inside the loop, and that re-assigned value is then printed with
# the `puts animal` method invocation. As the variable `var` is not defined in the outer scope, the inner block variable
# `var` is not visible to the `puts var` method call in the outer scope, outside of the loops block.

################################### Variable Shadowing ########################################

# Example 1) (not from doc)

animal = "dog"

loop do |_|
  animal = "cat"
  var = "ball"
  break
end

puts animal
puts var

# This code will output `cat` and raise an error. This is due to the variable `var` only being accessible
# from within the blocks inner scope. As the variable `animal` is initialized in the outer scope, the block
# can access and reassign the variable inside the block, and the reassigned variable is visibile to the 
# `puts` method call.

# Example 1) (from doc)

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

# This code output `5 5 4 2`. This is an example of variable shadowing. Inside the block passed to the 
# method `times`, we have a local paramter `a`. This local parameter hide the outer variable `a` and therefor
# the `a = 5` variable assignment within the block is actually assigning the local paramter `a` rather
# than the outer variable `a`. This reults in the outer scope variable `a` value remaining `4`.

# Example 2) (from doc)

n = 10

1.times do |n|
  n = 11
end

puts n

# This code will output `10`. This is once again due to variable shadowing as the `times` methods block
# argument parameter is assigned to `n`. This results in the variable assignment within the block to make 
# change to the block's parameter 'n', rather than the outside variable `n`.

# Example 3) (from doc)

animal = "dog"

loop do |animal|
  animal = "cat"
  break
end

puts animal

# This code will output `dog` and return nil.
# On `line 1` local varialbe `animal` is initialized to the string object `dog`.
# On `line 3`, we initialize a loop with a block paramter `animal`.
# On `line 5`, the block parameter `animal` is assigned the string object `cat`. This assignment does nothing to 
# outer scope variable `animal` due to variable shadowing.
# On `line 6` we break from the loop.
# Finally, on `line 7` we invoke the method `puts` with the local variable `animal` as an argument. This outputs
# the string represented by the variable `animal` of `dog` and returns nil.

################### Object Passing/Variables As Pointers #########################

# Example 1)

a = "hi there"
b = a
a = "not here"

# What are `a` and `b`?

p a
p b

# `a` will point to the string object `not here`, and `b` will point to the string object `hi there`.
# This is a good demonstration of variables as pointers.
# On `line 1` local variable `a` is initialized to point to the string object `hi there`.
# On `line 2` local varialbe `b` is initialized and points to the same string object as `a`, `hi there`.
# On `line 3` local variable `a` is reassigned to a different string object `not here`, this does not
# chang the assignment made to `b` on `line 2.

# Example 2)

a = "hi there"
b = a
a << ", Bob"

# What are a and b?

p a
p b

# `a` and `b` will point to the same string object `hi there, Bob`.
# On `line 1`, local variable `a` is initialized to the string object `hi there`
# On `line 2`, local variable `b` is initialized to the point to the same string object as `a`, `hi there`
# On `line 3`, the mutating metho `<<` is called on `a` with `, Bob` passed in as an argument. This modifies
# the existing string object that `a` is pointing to and appends `, Bob` to the end of the string.
# As a result, `a` and `b` are still pointing to the same, now modified, string object `hi there, Bob`

# Example 3)

a = [1, 2, 3, 3]
b = a
c = a.uniq

# What are a, b and c?

p a
p b
p c

# `a` and `b` will return the same array object [1,2,3,3], and c will return [1,2,3]
# On `line 1` local variable `a` is initialized to the array object `[1,2,3,3]`.
# On `line 2` local variable `b` is initialized to point to the same array object as `a`
# On `line 3` local variable `c` is initialized to point to the return value of the `uniq` method invocation
# on the array object poitned to by `a`. The return value of this method is a new array `[1,2,3]`. The method
# does not mutate the caller and therfor the array that `a` points to remains the same.

# If the method call on line 3 was changed to `uniq!`, variables `a` `b` and `c` would point to the same modified
# array returned by the `uniq!` method invocation.

# Example 4)

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

# What is `a`? What if we called `map!` instead of `map`?

p a

# `a` will return the array object `['a', 'b', 'c']`. This is because the `map` method does not mutate the caller.
# If the `map` method call inside the `test` method definition were changed to `map!`, the method would
# mutate the caller and therefor change the value of `a` to the return value of the `map!` method call.
# This example demonstrates the mutability of objects passed in to method as arguments.

# Example 5)

a = 5.2
b = 7.3

a = b

b += 1.1

# What is `a` and `b`? Why? 

p a
p b

# `a` will return `7.3` and `b` will return `8.4`. This is due to the reassignment on `line 6`. As this is
# reassignment, the variable `b` now points to a new float object rather than changing the original float object
# it was pointing to. This highlights that reassignment does not modify the existing pointed to object, but rather
# points to a new object.

# Example 6)
# What does the following code return? What does it output? Why?

def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str

# The `puts test_str` method invocation on `line 9` will output `Written Assessment`. This is due to the
# `+=` method invocation on `line 2` returning a new object to method paramter `str` rather than modifying
# the existing object. As such, any changes to `str` later in the execution of the `test` method will
# modify this new object rather than the original object pointed to by `test_str`.

# Example 6)
# What does the following code return? What does it output? Why?

def test(str)
  str  += '!'
  str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str

# The `puts test_str` method invocation on `line 9` will output `Written Assessment`. This is due to the
# `+=` method invocation on `line 2` returning a new object to method paramter `str` rather than modifying
# the existing object. As such, any changes to `str` later in the execution of the `test` method will
# modify this new object rather than the original object pointed to by `test_str`.

# Example 7)
# What does the following code return? What does it output? Why?
def plus(x, y)
  x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b

# This code will output `3` and `5`. This problem shows rubys "Pass by reference value" characteristics.
# In the `plus` method definition, the first parameter `x` is reassigned to the value of `x` + the second
# parameter `y`. While this is reassignment so `x` would now always point to a new object, it also highlights
# the imutability of integers.
# The variable initialization of `b` on `line 6` assigns `b` to the return value of the menthod invocation 
# `plus(a, 2)`, this passes in the variable `a` as the first argument, and the int `2` as the second argument.
# During the method execution, `a` is reassigned to the value of `a + 2` and returned from the method. This
# is then returned to `b`. 


=end