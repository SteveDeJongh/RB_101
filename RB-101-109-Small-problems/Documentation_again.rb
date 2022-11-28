=begin
1. Class : https://ruby-doc.org/core-2.5.0/File.html#method-c-path
instance: https://ruby-doc.org/core-2.5.0/File.html#method-i-path
Class return string representation of the path.
File.path("/dev/null") #=> "/dev/null"
Instance returns pathname to create file as a string.
File.new("testfile").path #=> "testfile"

Class(::) methods are called on the class, while instance(#) methods are called on the object.

2.
require 'date'

puts Date.civil #=> -4712-01-01
puts Date.civil(2016) #=> 2016-01-01
puts Date.civil(2016, 5) #=> 2016-05-01
puts Date.civil(2016, 5, 13) #=> 2016-05-13

3.
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Uses "Default positonal arguments"
#=> prints [4,5,3,6]

4.
a = [1, 4, 8, 11, 15, 19]

value = a.bsearch{|x| x > 8}

puts value

5.
a = %w(a b c d e) #=> ["a","b","c","d","e"]
"%w" returns an arrage of string, split at spaces.
https://ruby-doc.com/2.7.7/syntax/literals_rdoc.html

puts a.fetch(7) #=> indexerror
search array for index item.
https://ruby-doc.com/2.7.7/Array.html#method-i-fetch

puts a.fetch(7, 'beats me') #=> "beats me"
array.(index, "default")

puts a.fetch(7) { |index| index**2 } #=> 49


=
=end

