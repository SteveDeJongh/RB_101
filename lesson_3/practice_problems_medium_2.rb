# Practice Problems medium #2

=begin
1.

a = "forty two"
b = "forty two"
c = a

A and C point to the same object ID.
B does not as it's assigned to a new and unique string oject "food"

2.
a = 42
b = 42
c = a
All point to the same object ID. This has to do with how integers are immutable.

3.

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

String will be "pumpkins" , as += is re-assignment and create a new string object.
Array will be ["pumpkins", "rutabaga"] as << simply adding a new element to the same object ID of the array.

The important distinction is that while a reference is passed, the method initializes a new
local variable for both the string and the array and assigns each reference to the new local variables. 
These are variables that only live within the scope of the method definition.

4.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Here, as a_string_param is not reassigned but instaed muttated using the << "rutabaga", 
both the a_string_param and my_string as still point to the same object ID.

For an_array_param, it's the entire array is re-assigned and therefor now points to a different object_id
that is not the same as the my_array object_id that was passed in.

As before, the explanation is all about what Ruby does with a variable when we change the 
object it points to. Does it create a new object? Or is it able to just modify the existing object? 
 In this case, our literal ['pumpkins', 'rutabaga'] array is a new object, 
  and we are assigning it to the local variable an_array_param.

5.

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#now does not mutate either arguement and both new string and array are returned.

6.
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# is the same as... 

def color_valid(color)
  color == "blue" || color == "green"
end

=end