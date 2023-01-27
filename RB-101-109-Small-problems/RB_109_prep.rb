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
# reassignment to the return of the + method. The `+=` is syntactical sugar for concatenation `b = b + 1.1`
#, the variable `b` now points to a new float object returned by the method rather than changing the original
# float object it was pointing to. This highlights that reassignment does not modify the existing pointed to 
# object, but rather points to a new object.

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

# This code will output `3` and `5`. This problem shows rubys "Pass by reference value" characteristics
# and more specifically how it acts like pass by value for imutable objects.
# In the `plus` method definition, the first parameter `x` is reassigned to the value of `x` + the second
# parameter `y`. While this is reassignment so `x` would now always point to a new object, it also highlights
# the imutability of integers.
# The variable initialization of `b` on `line 6` assigns `b` to the return value of the menthod invocation 
# `plus(a, 2)`, this passes in the variable `a` as the first argument, and the int `2` as the second argument.
# During the method execution, `a` is reassigned to the value of `a + 2` and returned from the method. This
# is then returned to `b`. 

# Example 8)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def increment(x)
  x << 'b'
end

y = 'a'
increment(y) 

puts y

# This code will output `ab` and returns `nil`. This example shows the mutability of string objects,
# how ruby appears to be pass by reference when dealing with string objects, and that `<<` is a mutating method.
# The local variable `y` is initialzied to the string object `a`. The local variable is then passed in
# to the `increment` method as an argument, represented within the method definition as the paramter `x`.
# During the `increment` method execution, method argument `a`, represented by paramter `x`, is appended
# using the method `<<` with the string object `b`. This results in the method returning the mutated
# variable `y` as `ab`.

# Example 9)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 

# The code on `line 6` will output nothing and return 'bob', while the code on `line 7` will output `jim`,
# and returns `nil.`
# This example demonstrates that re-assignement does not mutate the object. The local varaible `name` is
# initialized to the string object `jim`. This variable is passed into the method `change_name` during 
# metod invocation as an argument. In the method definition, this first argument is represented by the 
# method parameter `name`. In the method definition, parameter `name` is reassigned to the string object
# `bob`. This means that parameter `name` is now pointing to a new, different string object than the
# object that is passsed in.
# This results in the method invocation on `line 6` returning `bob` and the method invocation of `puts`
# with local variable `name` passed in as an argument returning `nil` and outputing `jim`.

# Example 10)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 

# The method invocation on `line 6` will return `Jim`, and the `puts` method invocation on `line 7` will
# return `nil` and output `Jim`. This demonstrates Rubys pass by reference characteristics.
# On `lines 1-3` the method `cap` is defined and assigned one parameter `str`. In the method definition,
# the method `capitalize!` is called on the parameter `str`. This is a mutating method and returns the
# same string object with the first character capitalized.
# On `line 5`, local variale `name` is initialized to the string object `jim`.
# On `line 6`, the method `cap` is invoked with the variable `name` passed in as an argument, this argument 
# is represented by the `str` parameter within the `cap` method definition. The `cap(name)` method invocation
# returns `Jim`.
# On `line 7`, we invoke the method `puts` with `name` passed in as an argument, this method outputs `Jim`,
# and returns `nil`. This shows that the variable `name` is mutated within the `cap` method invocation.

# Example 11)
# What is `arr`? Why? What concept does it demonstrate?
a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
p arr

# arr is [[1,5],[2]]
# On `line 1`, we initialize the variable `a` to the array object `[1,3]`.
# On `line 2`, we initialize the variable `b` to the array object `[2]`.
# On `line 3`, we initialize the variable `arr` to the array object `[a, b]`.
# local variable `arr` now represents the array object `[[1,3], [2]]`
# On `line 6`, we are reassigning the element referenced at index `2` of variable `a` to `5`. As this
# reassignment takes place to an element inside of the variable `a`s array element, `a` still points
# to the same array object. This means that the `a` array object pointed to within the `arr` assignment
# is this same modified array.
# The result of this is that the `p` method call on `arr` on `line 7` outputs `[[1,5], [2]]` and returns `nil`.

# Example 12)

arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

puts arr1 
puts arr2

# `line 7` will output `'a', 'b', 'c'` and return `nil`.
# `line 8` will output `'A', 'B', 'C'` and return `nil`.
# This code demonstrate a few concepts, the mutability of arrays, the method `dup` returns a shallow copy
# of the object it is called on.
# On `line 1`, local variable `arr1` is initialized with the array object `["a", "b", "c"]`.
# On `line 2`, the local variable `arr2` is initalized and assigned the return value of the method call `dup`,
# on `arr1`. This return a copy of the `arr1` array `["a", "b", "c"]`.
# On `line 3`, `map!` is called on `arr2`. This iterates over everything element in `arr2`, represented by the
# block parameter `char` and places the return of the block in the elements place in `arr2` array.
# Within the block passed to `map!`, we call `upcase` on the block parameter `char`. This returns a string
# with all characters in uppercase.
# As the mutating `map!` method takes place on the `arr2` array itself, rather than the elements within the `arr2`
# array object, only the elements inside `arr2` are modified. If instead `map` was used on `arr2` and 
# `upcase!` within the block, both `arr1` and `arr2` would be changed as the object mutation occurs on the elements
# themselves rather than the array.


########################### Object Mutability/Mutating Methods ###########################

# Example 1)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def fix(value)
  value.upcase!
  value.concat('!')
  value
end

s = 'hello'
t = fix(s)

# What values do `s` and `t` have? Why?

# On `line 7` local variable `s` is initialized to the string object `hello`
# On `line 8` local varialbe `t` is initialized to the return value of the method invocation `fix`,
# with variable `s` passed in as an argument.

# Taking a look at the method definition on `lines 1-5`, we see that the `fix` method is defined with a 
# parameter `value`, for our case in the method invocation this now points to the same string object referenced
# by variable `s`. The mutating method `upcase!` is called on the parameter `value`, which modifies the object
# referenced by `value` in place. We then call the method `concat` with a `"!"` passed in as an argument. 
# This method is also mutating, and returns the same string object with an appended `!`. Finnaly, we return `value`.
# Throughout the method execution, value is never reassigned to any object other than the orignal object
# referenced by the variable passed in as an argument. As such, all changes to `value` in within the method
# execution are actually taking place on the same object referenced by `s`. As a result of this return value is assigned
# to variable `t` at initialization. The result is that variables `s` and `t` point to the same object, and
# both contain the string `HELLO!`

# Example 2)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def fix(value)
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

# What values do `s` and `t` have? Why?

# The result of this code is `s` still represents `hello`, and `t` represents `HELLO!`.

# This is due to the reassignemnt of `value` to the return value of `value.upcase` within the `fix` method
# definition. `value.upcase` does not mutate the string referenced by `value`, instead it creates a new copy
# and binds to `value`. This new string object is then passed to `concat("!")` where it is appended with a "!".
# This appended version of the string now represented by `value`, `HELLO!` is now assigned to variable `t`
# on `line 7` during the variable initialization.

# Example 3)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)

# What values do `s` and `t` have? Why?

# This code would return `helloxyz` for `s`, and `HELLOXYZ!` for `t`, and output nothing.
# The reason for the different outputs is due to the `value = value.upcase` line.
# On `line 7` variable `s` is intialized to the string object `hello`. On `line 8`, local variable `t` is initialized
# to the return value of the method call `fix(s)`. Local variable `s` is passed in as an argument to the `fix`
# method invocation, and seen in the method definition on `lines 1-5` represented by the parameter `value`.
# On `line 2` in the method definition, we call the `<<` method on `value` and append "xyz". At this point in the
# method execution, method parameter `value` and local variable `s` still point to the same string object.
# As such the, outer scope variable `s`'s string object is now `helloxyz`. On `line 3`, the method paramter `value`
# is reassigned to the return value of the method call `upcase` on `value`. As the `upcase` method returns a 
# new string object, this breaks the link between method parameter
# `value` and local variable `s` pointing to the same object. The result of this is that any future changes to `value`
# do not also affect local variable `s`. The method definiton continues on `line 4` by calling `concat("!")` 
# on method parameter `value`, and as this is the last line defined in the method the result of this method call is
# what's returned from the `fix` method and passed to the variable assignment of `t` on `line 8`.

# Example 4)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)

# What values do `s` and `t` have? Why?

# `s` and `t` both point to the same string object `HELLO!`, and the code does not output anything.
# During the method invocation of `fix(s)` during the variable initalization of `t`, method paramter 
# `value` is reassigned to the return value of `value.upcase!`, as this is a mutating method, the object
# returned references the same object ID, just with a new upcased string inside. Method paramter `value`
# and local variable `s` still point to the same  upcased string object. The further `concat` method invocation
# is also a mutating method and continues to make changes to the same object ID, appending `!` to the string object.

# Example 5)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)

# What values do `s` and `t` have? Why?

# Both local variables `s` and `t` will point to the same `axc` string object. The code does not output
# anything. The code shows that indexed assignment is mutating.

# Local variable `s` is initialized to the string object `abc` on `line 6`. On `line 7` the local variable
# `t` is initialized to the return value of the method invocation of `fix` with local variable `s` passed in
# as an argument. On `lines 1-4` the method `fix` is defined. The method is given one parameter `value`.
# On `line 2`, the the element at index 1 of `value` is reassigned to `x`. As the method returns the same string
# object, this change occurs to both variable `s` and method parameter `value`. On `line 3` we call value so that 
# object it is pointing to is what's returned from the method. This returned object is then assigned to the
# local variable `t`.

# Example 6)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def a_method(string)
  string << ' world'
end

a = 'hello'
a_method(a)

p a

# This code will output `hello world` and return `hello world`.

# This output is due to the mutability of string objects and the mutating method `<<`.

# Local variable `a` is initialized to the string object 'hello' on `line 5`. On `line 6` we have the method
# invocation `a_method` with local variable `a` passed in as an argument. On `lines 1-3` we see the `a_method`
# method definition with 1 parameter `string`. In the `a_method` definition, method parameter `string` calls the 
#`<<` method with ' world' passed in as an argument. `<<` is a mutating method, and therfor `string` is appended
# with ' world', though still points to the same object. As in the method invocation on `line 6` both argument `a`
# and method parameter `string` both point to the same object, local variable `a` is now also appended with ' world'.
# As a result, the call to `p` on `line 8` return the mutated object referenced by `a` of 'hello world'.

# Example 7)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
num = 3

num = 2 * num

# This code will return a new int object `6`. This is equivalent to `num *= 2` and is reassignment.
# On `line 1` local varialbe `num` is assigned to the integer value `3`. On `line 3`, `num` is reassigned
# to the result of `2 * num`. As reassignment takes place, `num` now points to a new object. This is an
# example of how variable assignment is non-mutating.

# Example 8)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
a = %w(a b c)
a[1] = '-'
p a

# The code will output `['a', '-', 'c']` and return '['a', '-', 'c']`.

# The code is a good example of how indexed assignment is mutating. On `line 1` we create an array of string
# objects `['a', 'b', 'c']`. On `line 2`, we reassign the element at index 1 of the `a` array to the character '-'
# As indexed assignment is mutating, the `a` array is mutated and is what's output and returned with the `p` 
# method invocation on `line 3`.

# Example 9)
# Link to page with #9 & #10
def add_name(arr, name)
  arr = arr + [name]
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

# This code will output 'bob', 'kim', and return nil.
# This code example is a good example of how concatenation is a non-mutating method.
# On `line 5` we initialize the variable `names` and assign it to an array object containing two string elements `bob`
# and `kim`. On `line 6`, we invoke the `add_name` method and pass in two arguments, the local variable `names` and 
# `jim`. Taking a look at the `add_name` method definition on `lines 1-3`, we see that the method is defined with two
# parameters `arr` and `name`. On `line 2`, method parameter `name` is reassigned to the result of `arr + [name]`. 
# As concatenation returns a new array object instead of mutating the existing object, `arr` will now point to a new 
# array object and no longer references the same object as outer scope variable `names`.

# Example 10)
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

# This code will output and array of `'bob', 'kim', 'jim'` string elements and return nil.
# This is due to the `<<` being a mutating method and not returning a new array object.
# On `line 5` the variable `names` is initialized with the string elements `bob` and `kim`. On `line 6` we invoke the 
#`add_name` method with two arguments `names` and `jim`. In the `add_name` method definition on `lines 1-3` we assign the
# method two parameters `arr` and `name`. On `line 2` in the method definition, we return the result of invoking the `<<` 
# method on parameter `arr` with `name` passed in as an argument. The `<<` method is a mutating method that appends the 
# given argument to the end of the calling object. The `<<` method then returns the same, now mutated, array. As such the
# assignment of the return value to paramter `arr` is redundant as they both point to the same object.

# Example 10)
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names

# This code will output and array of `'bob', 'kim', 'jim'` string elements and return nil.
# This is due to the `<<` being a mutating method and not returning a new array object.
# On `line 5` the variable `names` is initialized with the string elements `bob` and `kim`. On `line 6` we invoke the 
#`add_name` method with two arguments `names` and `jim`. In the `add_name` method definition on `lines 1-3` we assign the
# method two parameters `arr` and `name`. On `line 2` in the method definition, we return the result of invoking the `<<` 
# method on parameter `arr` with `name` passed in as an argument. The `<<` method is a mutating method that appends the 
# given argument to the end of the calling object. The `<<` method then returns the same, now mutated, array. As such the
# assignment of the return value to paramter `arr` is redundant as they both point to the same object.

########################################### Truthiness ###########################################

# Example 1)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end

# On `line 1` local variable `a` is assigned the to the string object `Hello`. In the condition statement on `lines 3-7`,
# we test the variable `a` for truthiness. As everything is truthy in Ruby except `false` and `nil`, this string object
# that variable `a` points to is deemed truthy and therefor the string "Hello is truthy" is output, and as this is output
# by the method `puts` it's return value is nil.
# This example demonstrates that everything evaluates to truthy in ruby except for `false` or `nil`.

# Example 2)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end

# This code will output `written assessment` and return `nil` from the `test` method invocation on `line 5` and `interview` from the `if`
# statement on `lines 7-11` and return `nil`.
# On `line 5` we initialize the local variable `var` to the return value of the `test` method invocation. Looking at the 
# `test` method definiton on `lines 1-3` we see that this method executes 1 line of code, `puts "written assessment"`.
# This means the invocation of the method `test` will output "written assessment" and return `nil`, asigning the return value
# `nil` to the local variable `var` on `line 5`. Folling this, we have have an `if..else` statement on `lines 7-11` which test
# the local variable `var` for truthiness. As `var` is `nil`, this evaluates to falsey and the `else` claus of the statment
# is executed. This results in `interview` being output from the `puts` method call, and `nil` returned. This example demonstrates
# that everything in ruby evaluates to truthy, except `false` or `nil`.

######################################## Each, Map, Select ########################################
# Example 1)
# What does the following code return? What does it output? Why? What concept does it 	demonstrate?
array = [1, 2, 3, 4, 5]

array.select do |num|
   puts num if num.odd?
end

# This code will output `'1', '3', and '5'` and return an empty array.
# On `line 1` we initialize the array object `array` and assign the `[1,2,3,4,5]` array to it.
# On `line 3` we then invoke the select method on `array` and pass it a block with a parameter `num`. The select method
# iterates over eache element in `array` and passes the element to the block. On `line 4` in the block, we call `puts` 
# on parameter `num` if `num` is odd. This ouputs each odd number, and returns `nil`. As `select` relies on the truthiness
# of the blocks return value, all elements will return `nil` with is falsey and not selected to be in the returned array.
# As such, `select` will return an empty array.

# Example 2)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }

# On `line 1` local varialbe `arr` is intiailized to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.
# On `line 3` the `select` method is invoked on `arr` and passed a block with a parameter `n`. `Select` iterates 
# over every element in the array and passes the element to the block parameter `n`. The block passed to `select` 
# checks every element in the array if it's odd. If the element is odd, the block returns a truthy value and therfor
# the element is added to the array returned by `select`.
# This code will not output anything, but returns a new array `[1,3,5,7,9]`

# Example 3)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array

# The `p` method call on `new_array` will output the array `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`
# This is due to the `select` method returning the orignal array element (if the iteration of the block evaluates
# to truthy) to the returned array and not the modified element.
# On `line 1` we initialize `arr` to the `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` array.
# On `line 3` we initialize `new_array` to the return value of the method call `select` on `arr`. `select` is passed
# a block with parameter `n`, this parameter represents each array element on each iteration of the block.
# On `line 4` in the block execution, we add block parameter `n` with int `1`. The result of this is a new `int`, and 
# as that `int` evaluates to truthy, the block returns the original element to the new array returned by `select`.
# On `line 5` we call `p` on the `new_array` variable which was assigned the array returned by `select`.
# This outputs `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` and returns `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.

# Example 4)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array

# This code will output each element of the `arr` array `1,2,3,4,5,6,7,8,9,10` from the `puts n` method call in the
# `select` block, and output an empty array and return the empty array from the `p new_array` call on `line 7`.
# On `line 1` we initialize the local variable `arr` to the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.
# On `line 3` we initialize the local variable `new_array` to the return value of the method call `select` on `arr`.
# The `select` method call is passed a block with paramater `n`. `n` represents each array element for each iteration
# of the block. Within the block execution, we add `n` and `1`, as this is a non-mutating method and the return value
# of the method is not reassigned, `n` remains it's initial value. We then call `puts` on `n`, this outputs `n` and
# returns `nil`. As `nil` is falsey, the element is not passed back to the array returned by select.
# We then call `p` on new_array`, as all iterations of the block passed to `select` returned `nil`, this array is empty.

# Example 5)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

# This code will output and return an array containing `false, true, false, false, true`.
# On `line 1` we initialize the `words` local variable to an array of string objects.
# On `line 3` we initialize a `new_array` local variable to the array returned by the `map` method call on `words`.
# The `map` method call is passed a block with a parameter `word`, this parameter represents each element of the array
# as `map` iterates over the `words` array. Within the block, we call `start_with?` on block parameter `word` and pass
# in a `"t"` as an argument. The `string#start_with?` method returns `true` or `false` depending on if the string
# represented by `word` begings with a `t` passed in as an argument. As the method call `start_with?` is the last evaluated
# line of code within the block, the return value of that method call is what's returned by the block to the `map` method call.
# returned value is then added to the array object returned by `map` and assigned to local variable `new_array`.
# We then output the array `new_array` on `line 7` with `p`. This example demonstrates the transformation properties
# of the `map` method.

# Example 6)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }

# The code will output each element of the `arr` array, and return the original `arr` array.
# On `line 1`, local variable `arr` is initialized and assigned the array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`.
# On `line 3`, we call `each` on `arr` and pass in a block with a paramter `n`. For each element in the `arr` array,
# we pass that element to the block paramter `n` and execute the block. During block execution the methods `puts` is
# invoked and passed `n` as an argument. This outputs `n`, and returns `nil`. As `each` does not care about the return
# value of the block and isntead returns the orignal array, the orginal `arr` array is returned. This shows how `each`
# will always return the orignal collection.

# Example 7)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented

# This code will output an array `[2,3,4,5,6,7,8,9,10,11]` and return the same [2,3,4,5,6,7,8,9,10,11] array.
# On `line 1` we initialize local variable `arr` to the array `[1,2,3,4,5,6,7,8,9,10]`.
# On `line 3` local variable `incremented` is initialized to the array returned by `map` method invoked on `arr`.
# `map` is passed a block with parameter `n` to represent each element of the `arr` array. In the block execution
# on `line 4` we add `n` and  the int `1`. As this is the last line of the block, this is whats returned to `map`
# and passed into the new modified array assigned to `incremented`.
# We then call `p` on `incremented` on `line 6` to output this new modified array.
# This example highlights the transformative nature of `map` returning a new array of the return values of the block.

# Example 8)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array

# This code will output and return the array `[false, true, true, true, true, true, true, true, true, true]`.
# This code shows how `map` returns a new array of objects returned by the block. As the last line of code in the 
# block passed to `map` is a conditional test that returns `true` or `false` depending on weather the array element
# passed to the block on each iteration represented by parameter `x` is greater than `1`, one of those options is 
#what's returned to the array on every iteration of the block. 

# Example 9)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array

# This code will output `1,2,3,4,5,6,7,8,9,10` from the `puts` method call on `line 5` in the block passed to `map`.
# Then on `line 7` the `p` method call on `new_array` will return an array full of `nils` `[nil, nil, nil, nil, nil,
# nil, nil, nil, nil, nil]`. This output and return value of `p new_array` is do to the return value of the block 
# passed to `map`. On eaach iteration of the block, the last line is a call to `puts` which always returns `nil`.
# This returned `nil` is passed to the returned array from `map` on each iteration of the block.

# Example 10)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
a = "hello"

[1, 2, 3].map { |num| a }

# This code will not output anything, but the code on `line 3` will return an array `["hello", "hello", "hello"]`

# This code highlights how the method `map` is used to transform collections.
# On `line 1` we initalize a local variable `a` with the string object `hello`.
# On `line 3` we call `map` on the array objet `[1,2,3]` and pass in a block with parameter `num`. Inside of the block
# passed to `map`, we call the local variable `a`. As this is the last line of the block, this the return value of
# this line is what's passed to the array returned by `map`. As blocks can access variables initialized in an outer
# scope, this variable `a` is visible in the block execution and represents the string object `hello`.

# Example 11)
# What does the following code return? What does it output? Why? What concept does it demonstrate?
[1, 2, 3].each do |num|
  puts num
end

# This code will output `1`, `2`, `3` and return the array `[1,2,3]`.
# On `line 1` we invoke the method `each` on the array object `[1,2,3]` and pass it a block with parameter `num`.
# The each method passes each element of the array one at a time and exucutes the block. For every element in the array
# the `puts` method is invoked and passed block parameter `num` as an argument. This block parameter `num` represents
# the array element passed in. `puts` outputs the `num` and returns `nil`. As `each` does not care about the return
# value of the block and returns the original array element, that is whats returned.

####################################### Other Collection Methods #######################################

# Example 1)
[1, 2, 3].any? do |num|
  num > 2
end

# This code will return `true` and not output anything.
# On `line 1` we invoked the method `any?` on array object `[1,2,3]` and pass in a block with an argument `num`. `Any?`
# will pass each element of the array to the block, in the block the element will be presented by the parameter `num`.
# The block return the evaluated result of the condition within the block. In this case, it's if `num` is greather than int
# `2`. If the block returns a truthy value from any of the elements passed in to the block, 
# the `any?` method will return `true`.

# Example 2)
 { a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end

# This code will return `false`.
# On `line 1` we invoke the method `any?` on the hash object `{ a: "ant", b: "bear", c: "cat" }` and pass a block
# with two parameter `key` and `value`. `any?` will pass each key value pair of the hash to the block. For each element
# the block will check if the values size is greater than 4. This is done by invoking the `size` method on each value.
# If any of the iterations of the block return a truthy value, the `any?` method will return true. As none of the values
# meet this condition, the `any?` method returns false.

# Example 3)
[1, 2, 3].all? do |num|
  num > 2
end

# This code will return `false` and output nothing.
# On `line 1` we invoked `all?` on the array `[1,2,3]` and pass a block with `num` as a parameter. `all?` passed each element
# of the array into the block, represents that element by `num`, and then checks if `num` is greater than 2. If all
# elements of the array return a truthy value from the block, `all?` will return `true`.

# Example 4)
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end

# This code will return `true` and output nothing.
# On `line 1` we invoked the method `all?` on the hash object `{ a: "ant", b: "bear", c: "cat" }` and pass it a block
# with two parameters `key` and `value` representing the key and value of each key value pair passed in. `all?` passed
# each key value pair to the block one at a time and checks for the return value from the block. Inside the block,
# the return value of method `length` invoked on `value` tested to see if it is equal to or greather than `3`. If 
# all key value pairs of the hash object return a truthy value the `all?` method will return `true`, however if any
# pair does not it will return `false`.

# Example 5)
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

# The code will output:
# "The index of 1 is 0." and return `nil` from this `puts` method call in the block.
# "The index of 2 is 1." and return `nil` from this `puts` method call in the block.
# "The index of 3 is 2." and return `nil` from this `puts` method call in the block.
# and return the `[1,2,3]` array from the initial `each_with_index` method invocation on `line 1`.
# The `each_with_index` method is called on the array objet `[1,2,3]` and passed a block to represent each element as
# block parameter `num`, and each index as block parameter `index`. In the exeuction of the block, we call `puts`
# on a string with some strin interpolation. The `puts` method call outputs "The index of (element `num` represents) is
# (value index represents)." and returns `nil` each time. Once all element have been interated over, the `each_with_index`
# method returns the original collection.

# Example 6)
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end

# This code will not output anything, but return a new array `['ant', 'bear', 'cat']`.
# On `line 1` we call the method `each_with_object` on the hash `{ a: "ant", b: "bear", c: "cat" }`,
# pass in an array as the object, and a block with two parameters `pair` and `array`. In the block
# `pair` represents each key value pair of the hash, and `array` represents the array object passed
# to `each_with_object` as an argument.
# `each_with_object` will iterate over each key value pair in the hash and pass them to the block.
# Inside the block on `line 2`, we call the `last` method on `pairs`, `pairs` represents each `key`
# `value` as two element of an array, and appends the result of that method call to `array` with 
# the `<<` method.
# As `each_with_object` returns the assigned object, an array is returned which contains all of the 
# values of the hash.

# Example 7)
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

# This code will return a new hash `{'ant' => :a, 'bear' => :b, 'cat' => :c}`

# On `line 1` the method `each_with_object` is invoked on the hash `{ a: "ant", b: "bear", c: "cat" }`,
# passed a `hash` as an argument and a block with parameter `(key, value)`, and `hash`. `each_with_object`
# iterates over each key value pair of the hash and on block execution assigns them to the block
# parameters `key` and `value`. Within the block execution on `line 2`, we initialize a new key value
# pair in the new hash object. `hash` represents the new hash object returned by `each_with_object`, `value`
# represents the exisiting hashes value for this iteration but is assigned to be a hash key in the returned
# hash, and `key` represents the existing hashes key for this iteration but will be returned to the new hash
# object as the value.

# Example 8)
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even

# This code will return a mutli level array `[[1,3],[2]]` from the `partition` method call on `line 1` and
# output and return the array `[1,3]` from the `p` call on `line 5`, and output and return the
# array `[2]` from the `p` call on `line 6`.
# On `line 1` we initialize and assign two local varialbes `odd` and `even` to elements of the returned
# array by the method call `partition` on the array `[1,2,3]`. The `partition` method call is passed
# a block as an arugment with the parameter `num`. `parition` passes each element of the array to the block
#, represents the element in the block by `num`, and then within the block calls `odd?` on parameter `num`.
# As the `odd?` method is the last line of code within the block, the return value of the method
# is what's passed as the return value of the block. If the block evaluates to truthy, the element
# is placed in the first array returned by the `partition` method. If the return value is falsey,
# the element is placed in the second array returned by `partition`. The two arrays are then assigned
# `odd` and `even` respectively.
# We then call `p` on `odd` on `line 5`, outputing and returning the array `[1,3]`, followed by
# another `p` method invocation on `even` on `line 6`, outputing and returning the array `[2]`.

=end