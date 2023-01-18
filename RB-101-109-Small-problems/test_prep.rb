############## RB 109 test prep ##########

=begin

Test checklist:
X local variable scope, especially how local variables interact with method invocations with blocks and method definitions
X mutating vs non-mutating methods, pass-by-reference vs pass-by-value
X working with collections (Array, Hash, String), and popular collection methods (each, map, select, etc). Review the two lessons on these topics thoroughly.
X variables as pointers
X puts vs return
X false vs nil and the idea of truthiness (truthy and falsy values)
X method definition and method invocation
X implicit return value of method invocations and blocks
X how the Array#sort method works

Some specifics:
X Assignments, remain consistent in how they are described.
X Truthiness, refer to returns as "truhy" or "falsey" unless excplicitely true or false.
 Method Definiton and Method Invocation (More variable scope)
X Variable References and Object Mutability Arcticles
   READ Variable References and Mutability of Ruby Objects
   READ Mutating and Non-Mutating Methods in Ruby
   READ Object Passing in Ruby - Pass by Reference or Pass by Value
X Assessment prep videos 1, 2 & 3

RB101 Exercise Database:

RB109 Written
Additonal Practice Problems:
DONE 1,
DONE 2,
DONE 3,

Chris Larwoods blog post
  109 Study Guide and all linked articles.
X  Srdjan's 4-part blog series:
X   Part1
X   Part2
X   Part3
X    Part4
  Callie's Article.

Topics:
X  naming conventions: legal vs. idiomatic, illegal vs. non-idiomatic
X  numbers, including NaN and Infinity
X  strings
X  interpolation in strings
X  boolean vs. truthiness
X  nil
X  array and hash syntax
X  array properties and methods: array.size, array.push, array.pop
X  operators
X    numeric operators: +, -, *, /, %, divmod, **
X    string operators: +, *
X    conditional operators: ==, ==, <, >, <=, >=, ternary
X    logical operators and short-circuit evaluation: !, &&, ||
X    operator precedence
X  coercing values: #to_s, #to_i, #to_f, #to_a, #to_h
X  mutability, immutability, and constants
X  variables
X    identifier: variable names, constant names, method names
X    initialization and reassignment
X    uninitialized variables
X    scope
X    variables as pointers
X  conditionals and loops
X  puts
X  require
X  methods
X    definition and invocation
X    default parameters
X    return values
X    parameters vs. arguments
X    function scope
X    function composition
X    output vs. return values, side effects
X    pass-by-reference and pass-by-value
X    the call stack
X  expressions and statements

############## Launch School Live Session Beginning Ruby Part 1

### Ruby's syntactical sugar and Where does the code come from?

puts "hello" #same as puts("hello")

string = 'a string'

def string
  'a method'
end

p string
p string()

# 1) "puts" method invocation. Parentheses are optional.
# 2) In order to invoke a method instead of local variable use method() (include optional parenthases)
# 3) In order to invoke method not from the core library, you must "require" the method first.

###Local Variable scope

Variable intiialization variable re-assignment visually look the same.

Local variables initialized in the local scope are accessible inside blocks.
Variables initialized inside a block is not accessible outside the block.

############## Launch School Live Session Beginning Ruby Part 2

### Pass by reference vs pass by value

def amethod(param)
  param += " world" # Re-assignemnet, returns a new string object.
  # or param + " world" # Concatenation, returns a new string object and makes no change to param.
  # or param << " world" # Mutates the str object.
end

str = 'hello'
amethod(str)

p str

# Variables as pointers:

a = 'hello'
b = a

b << ' world'

#----- 2 variables; 1 object

p a
p b

a += b # re-assignment of variable a to a new object. 

#----- 2 variables; 2 objects

b << ' universe'

p a #=> "Hello worldhello world"
p b #=> "Hello world universe"

############## Launch School Live Session Beginning Ruby Part 3

arr = [1,2,3,4,5,6,7,8,9,10]

idx = 0

# loop do
#   puts arr[idx]
#   idx += 1
#   break if idx == arr.size
# end # Returns nil.

# arr.each do |x|
#   puts x if x > 5
# end # Returns original array.

# Append 12 to the end of array.
arr << 12

# Prepend 0 to beginnning of array

arr.unshift(0)

# Remove the 12 and add a 3

arr.pop
arr << 3

# Remove duplicates using 1 method.

arr.uniq!

# Extract all odd numbers into new array.

odds = arr.select { |x| x.odd?}

# Increment all numbers by 1

incremented = arr.map {|x| x+=1}

p odds
p arr
p incremented

Hash

hsh = {a:1, b:2, c:3, d:4}

# Get the value of "b"
# Can't get the value of "b", only :b

p hsh[:b]

# Add this key/value pair to the hash: {e:5}

hsh[:e] = 5
p hsh

# Iterate over the has and print out the keys and values

hsh.each do |k,v|
  puts "Key is #{k}, value is #{v}"
end

# Print out the key value pairs where the value is less than 3.5

hsh.each do |k,v|
  puts "Key is #{k}, value is #{v}" if v < 3.5
end

# return a new hash where value is less than 3.5

new_hsh = hsh.select do |k,v|
  v < 3.5
end

p new_hsh

# Delete all key/value pairs where value is less than 3.5

hsh.delete_if do |k,v|
  v < 3.5
end

p hsh

=end

