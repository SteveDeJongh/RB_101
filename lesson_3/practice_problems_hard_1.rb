# Practice Problems Hard 1

=begin
1.
if false
  greeting = "hello world"
end

greeting

greeting is nil, and an no error is thrown for "undefined local variable". Typically Ruby would
show an error when referencing a unintialized varialbe. However when initializing a local variable
within an if clause, the local varibalbe is initialled to nil even if the if clause doesn't run.

2.
greetings = { a: 'hi' }
informal_greeting = greetings[:a] # informal_greeting points to the string object "hi"
informal_greeting << ' there' # mutates the string object, maintains same object ID.

puts informal_greeting  #  => "hi there"
puts greetings

puts greetings would return:
{ a: 'hi there"}

if we didn't want to modifiy the original object but still add " there"
...
informal_greeting = greetings[:a].clone
informal_greeting << " there"

#or
...
informal_greeting = greetings[:a]
informal_greeting = informal_greeting + " there"

3.
a)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

Will print "one", "two", "three" as the variable as not re-assigned outside the method.

b)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

Still print "one", "two", "three" as the variable is not reassigned outside the method.

c)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

returns "Two", "Three", "One" as Gsub modifies the caller.

4.

# original code: does not acocunt for ip's with more or less than 4 ., and doesn't return false.
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end


def is_an_ip_number?(num)
  if num.to_i > 0 && num.to_i < 255
    true
  else
  end
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  # or return false unless dot_separated_words.size == 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    # if is_an_ip_number?(word) == false
    # return false
    # break
    # end
    # replaces past 4 line: 
    return false unless is_an_ip_number?(word)
  end

  true
end

p dot_separated_ip_address?("25.25.26.25")

=end

