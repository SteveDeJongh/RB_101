# Lesson 5

=begin

####################################### Sorting #######################################

The <=> Method

Compares two objects of the same type and return -1, 0 or 1 depending on wether the first object is
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

####################################### Nested Data Structures #####################################

arr = [[0,1],[1,2]]

Access 2, arr[1][1]
Change 2, arr[1][1] = 2

arr[0] << 3
#=> [[0,1,3],[1,2]]

Nested Hashes in array
arr = [{ a: 'ant' }, { b: 'bear' }]

arr[0][:c] = 'cat' #adds new key and value to first hash.
arr # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]

#dup and #clone create shallow copies of the object they are called on. Only the object that the
method is called on is copied. The objects within will still be shared.

Main difference between dup and clone is that clone preserves the frozen state of the object.

Like dup and clone, freeze only freezes teh object it's called on, not the objects within.



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

Line(s) of code, action, object, side effect, return value, is return value used?
1) method call map, the outer array, none, new array [1,3], no
1-4) block execution, each sub-aray, none, sub-array integer at index 0, yes by map for transformation.
2) method call first, each sub-array, none, 1, 3, yes by puts
2) method call puts, first element in each sub array, outputs string, nil, no
3) method call first, each sub-array, none, 1, 3, yes determines block return value

Example 4)

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

Line(s) of code, action, object, side effect, return value, is return value used?
1) variable asignment, array, none, arrray, no
1) method call each, multi dim array, none, original array, yes by variable assignemnt.
1-7) outer block execution, each sub-array, none, each sub-array, no
2) method call each, each sub-array, none, original sub-array, no
2-6) inner block execution, each element in sub-array, none, nil, no
3) comparison, element of the sub-array, none, boolean, yes evaluated by if
3-5) conditional if statement, result of comparison expression, none, nil, yes used to 
determine return of inner block
4)puts method call, each element of sub-array, yes output text, nil, yes used to determine return value
of conditional statement if the condition is met

Example 5)

1) [[1, 2], [3, 4]].map do |arr|
2)   arr.map do |num|
3)     num * 2
4)   end
5) end
6) #=> [[2,4],[6,8]]

Line(s) of code, action, object, side effect, return value, is return value used?
1) method call map, multi dim array, none, transformed arrray, no
1-5) outer block execution, each sub-array, none, new array, yes passed to map
2) method call map, each sub-array, none, new transformed array, yes passed back outer block
2-4) inner block execution, each element of sub-array, none, result of num * 2, yes by map
3) multiplication, each element of sub-array, none, result of calcucation, yes by inner block.

Example 6)

1) [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
2)   hash.all? do |key, value|
3)     value[0] == key.to_s
4)   end
5) end
6) # => [{ :c => "cat" }]

Line(s) of code, action, object, side effect, return value, is return value used?
1) method call select, array of hashes, none, new array, no
1-5) outer block execution, each hash within array, none, boolean, yes by select.
2) method call all?, each hash within array, none, boolean, yes by outer block.
2-4) inner block execution, each key value of hash, none, boolean, yes by all?
3) to_s method call, each key, none, key as a string, yes by comparison.
3) comparison method call, character at index 0 of value and string representation of key, none,
boolean, yes by inner block exectuion.

If all? changed to any?, both hashes would be returned.


Example 9)
Line(s) of code, action, object, side effect, return value, is return value used?
1) method call map, multi dimensional array, none, new array, no
1-7) outer block execution, each sub-array, none, each sub-array, yes by map
2) each method call, each sub-array, none, orignal sub-array, yes by outer block. # returns original array
2-6) middle block exeuction, each element in sub-array, none, sub-sub-array, no
3) partition method call, each element in sub-sub-array, none, two arrays, no
3-5) paritin block, each element in sub-sub-array, none, two array, no
4) size method call, element, none, integer, yes by comparison
4) comparison method call, integer and 0, none, boolean, yes by partition

Example 10)

1)  [[[1, 2], [3, 4]], [5, 6]].map do |arr|
2)    arr.map do |el|
3)      if el.to_s.to_i == el   # it's an integer
4)        el + 1
5)      else                    # it's an array
6)        el.map do |n|
7)          n + 1
8)        end
9)      end
10)    end
11)  end
Line(s) of code, action, object, side effect, return value, is return value used?
1) method call map, original multi dim array, none, new array, no
1-11) outer block execution, each sub-array, none, array after evalation of inner block, passed to map
2) method call map, each sub-array, none, new array, yes passed to outer block.
2-10) inner block exectuion, each element of sub-array, none, evaluated result of if statement, passed to map
3-9) conditional if, each element of sub-array, none, nil, yes used to determine return value of inner block
3) comparision, each element of sub-array, none, boolean, yes used by if conditional
3) to_s and to_i method, each element of sub-array, none, string then int, yes used by comparison
4) addition, each element of sub-array and 1, none, result of addition, yes passed to if conditional
6) map method call, each elememnt of sub-array, none, new array, yes passed to if conditional
6-8) 2x inner block execution, each element of sub-sub-array, none, array, yes by map method call
7) addition, each element of sub-sub-array and 1, none, reuslt of addition, yes passed to block

################## Practice Problems: Sorting, Nested Collection, and working with blocks#############

1)

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end

2)

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |hash|
  hash[:published]
end

3)

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

p hsh2[:third].key(0)

4)

arr1 = [1, [2, 3], 4]

arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}

hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

hsh2[['a']][:a][2] = 4
p hsh2

5)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end
p total_male_age

6)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end

#or each with two values.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  puts "#{name} is a #{details["age"]}-year-old #{details["gender"]}."
end

7)

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2 # changes value of arr[0], not a
arr[1][0] -= a # modifying array b's value at index 0

a would equal 2
b would equal [3,8]

8)

vowels = %(a e i o u)

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
  third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |num, details|
  details.each do |string|
    string.chars do |char|
        puts char if vowels.include?(char)
    end
  end
end

9)

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |element|
  element.sort do |a,b|
    b <=> a
  end
end

10)

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  element.transform_values do |val|
    val + 1
  end
end

#or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  inc_hash = {}
  element.each do |key, val|
    inc_hash[key] = val + 1
  end
  inc_hash
end

#or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

11)

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |arrays|
  arrays.select do |x|
    x % 3 == 0
  end
end


12)

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

arr1 = arr.each_with_object({}) do |element, object|
    object[element[0]] = element[1]
end

#or

hsh = {}
arr.each do |element|
  hsh[element[0]] = element[1]
end

p arr1
p hsh

13)

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

arr1 = arr.sort_by do |element|
  sum = 0
  element.select do |x|
    x.odd?
  end
end

p arr1

14)

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

results = hsh.map do |_key, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == "vegetable"
    value[:size].upcase
  end
end

p results

15)

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

nr = arr.select do |hsh|
  # p hsh
  hsh.all? do |_,value|
    # p value
    value.all? do |num|
      # p num
      num.even?
    end
  end
end

p nr

16)

def uuid
  characters = []
  (0..9).each {|digit| characters << digit.to_s}
  ('a'..'f').each {|digit| characters << digit}

  uuid = ''
  sections = [8,4,4,4,12]
  sections.each_with_index do |section, index|
    section.times {uuid += characters.sample}
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

p uuid

=end

=begin

################### Practice problesm: sorting, nested collections and working with blocks Round 2########

1)

arr = ['10', '11', '9', '7', '8']

arr.sort do |a,b|
  b.to_i <=> a.to_i
end

2)

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by do |hash|
  hash[:published].to_i # to_i isn't required as all numerical strings are 4 characters long.
end

3)

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)

4)

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2

5)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each_value do |value|
  total_male_age += value["age"] if value["gender"] == 'male'
end

p total_male_age

6)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details| # or #each_pair
  puts "#{name} is a #{details['age']}-year-old #{details['gender']}."
end

7)

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

#=> A = 2
#=> B = [3,8]
#=> Arr = [4,[3,8]]

8)

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
  fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %(a e i o u)
hsh.each do |_, value|
  value.each do |string|
    string.each_char do |char|
      p char if vowels.include?(char)
    end
  end
end

9)
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a,b|
     b <=> a
  end
end

10)

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  element.transform_values do |val|
    val + 1
  end
end

#or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  inc_hash = {}
  element.each do |key, val|
    inc_hash[key] = val + 1
  end
  inc_hash
end

#or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

11)

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr.map do |element|
  element.select do |val|
    val % 3 == 0
  end
end

12)

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}
arr.each do |sub_arr|
  hsh[sub_arr[0]] = sub_arr[1]
end

p hsh

13)



=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_arr = arr.map do |sub_arr|
  

end

p new_arr