# Lesson 5

=begin

####################################### Sorting #######################################

The <=> Method

Comapres two objects of the same type and return -1, 0 or 1 depending on wether the first object is
larger, equal too, or greatr than the second object. If two object can't be compared it returns nil

2 <=> 1 #=> 1
1 <=> 2 #=> -1
1 <=> 1 #=> 0
1 <=> "a" #=> nil

String#sort

['arc', 'bat', 'cape', 'ants', 'cap'].sort

#=> ['ants', 'arc', 'bat', 'cap', 'cape']

Array#sort
[['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# => [["a", "car", "d"], ["a", "car", "d", 3], ["a", "cat", "b", "c"], ["b", 2]]

####################################### Working with Blocks #######################################

When evaluating code like this, ask the following questions:

What is the type of action being performed (method call, block, conditional, etc..)?
What is the object that action is being performed on?
What is the side-effect of that action (e.g. output or destructive action)?
What is the return value of that action?
Is the return value used by whatever instigated the action?

Example 3)
1) [[1, 2], [3, 4]].map do |arr|
2)   puts arr.first
3)   arr.first
4) end
5) 1
6) 3
7) [1,3]


lines of code, action, object, side effect, return value, is return value used?
1 , method call 'map', outer array, none, new array [1,3], No but shown on line 7.
1-4, block excution, sub-array, none, integer at index 0 of sub-array, yes used by map.
2, method call first, each sub-array, none, element at index 0 of sub-array, yes by puts
2, method call puts, integer at index 0 of each sub-array, outputs string, nil, no
3, method call first, each sub-array, none, Element at index 0 of sub-array, yes used to determine
return value of block.

Exmaple 4)
1) my_arr = [[18, 7], [3, 12]].each do |arr|
2)   arr.each do |num|
3)     if num > 5
4)       puts num
5)     end
6)   end
7) end
8)
9)
10)

lines of code, action, object, side effect, return value, is return value used?
1, variable assignment of array, none, return value of each, no.
1, method call each, outer my_arr array, none, orignal array, yes to assign my_arr
1-7, outer block execution, each sub-array, none, each sub-array, no
2, method call each, sub-array, none, the calling object, sub array in current iteration, yes, used to
determine return value of outer block.
2-6, inner block execution, each element of sub-array, none, nil, no.
3, comparison, each element of sub-array, none, true or false, yes by if
3-5, conditional (if), the result of the expression num > 5, none, nil, yes used to determine return
value of inner block.
4, method call puts, each element of sub-arrray, outputs integer, nil, yes used to determine return
value of condiiton statement if the condition is met.

Example 5)
1) [[1, 2], [3, 4]].map do |arr|
2)   arr.map do |num|
3)     num * 2
4)   end
5) end
6) #=> [[2,4],[6,8]]

lines of code, action, object, side effect, return value, is return value used?
1 method call map, original array, none, new transformed array, no but output on line 6.
1-5, outer block execution, each sub-array, none, new tranformed array, yes by map.
2, method call map, each sub-array, none, new transformed array, yes by outer blocks return value.
2-4, inner block execution, each element of sub-array, none, an integer, yes by inner map.
3, num * 2, each element of sub-array, none, value of calculation, yes, used to determine
 value of inner block.

Example 6)


=end
