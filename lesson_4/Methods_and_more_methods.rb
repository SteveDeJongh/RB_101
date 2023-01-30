# Pratice problems: Methods and more methods.

=begin
1.

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1,2,3]

Returns current element for each loop as the return value of the block is 'hi' and therefor truthy.

2.

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

https://ruby-doc.org/2.7.7/Array.html#method-i-count
if a block is given, counts the number of elemtnhs for which the return for it true.

# => 2

3.

[1, 2, 3].reject do |num|
  puts num
end

#=> [1,2,3]

puts evaluates to nil = false, reject returns the element for which the given block is NOT true.

If block return value is nil/false it IS included in the returned array.

"reject returns a new array containing items where the block's return value is "falsy""

4.

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#=> { 'a': 'ant', 'b': 'bear', 'c': 'cat}

5.

hash = { a: 'ant', b: 'bear' }
hash.shift

#=> [:a, 'ant']

6.

['ant', 'bear', 'caterpillar'].pop.size

#pop returns removed element (last element from an array)
#size is then called on that single poped element, a string, and checks size.

#=> 11 ("caterpillar" string length.)

7.

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

outputs: 1
any? method stops iterating as the first returned value for any? is true and therefor the 
return will be true.

return value of any? #=> true

8.

arr = [1, 2, 3, 4, 5]
arr.take(2)

returns #=> [1, 2]
arr = [1,2,3,4,5]

arr#take() returns the specific number of elements fomr the start, and is non desctructive.

9.

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#=> [nil, 'bear']

As the if statement evaluates to false ont eh first value, nil is returned as none of the conditions are met.

10.

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

outputs:
2
3
returns:
#=> [1,nil, nil]

############# Practice Problems review

# 1)

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Returns [1,2,3]

# 2)

 ['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Retruns 2
# .count with a block returns the count of the number of elements that return a true value.

# 3)

[1, 2, 3].reject do |num|
  puts num
end

# Returns [1,2,3], #return returns a new array containing items where the blocks return value is falsy.

# 4)

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# returns { 'a' => 'ant', 'b' => 'bear', 'c' => 'cat}

# 5)

hash = { a: 'ant', b: 'bear' }
hash.shift

# returns [:a, 'ant']

# 6)

['ant', 'bear', 'caterpillar'].pop.size

# returns 11, .pop returns the last element of the array, .size is called on that last element.

# 7) 

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# block iterations will return `true`, and the block will only execute once as #any stop iterating as soon as
# any `truthy` value is returned.
# #any? Returns `true`.

# 8) 

arr = [1, 2, 3, 4, 5]
arr.take(2)

# #take return the first x number of element. Returns `[1,2]`

# 9)

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# map returns [nil, 'bear']. Map will always return an array, and as none of the if conditions are met on the first
# value, the statement returns nil.

# 10)

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Returns [1, nil, nil]
=end