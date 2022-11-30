# Pseudo Code
=begin
# 1. A method that returns the sum of two integers.

Given two integers.
take 1 integer and add to 2nd integer and save it to a result value
return the result value

#START
Receive two integers.
set integer 1 to value1
set integer 2 to value2
set result to value1 + value 2
print result.
#END

#2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

Given an array of strings
itterater through the array one by one
for each iteration, add current string to new sentence variable
return sentence variable

#START
Begin with array of string
set sentence variable
WHILE array of strings length greater than iterator
read array of string position and add string to sentence
After iterating through the array, print sentence
#END

#3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

given an array of integers
create new array
iterate over original array
add orignal array element to new array
skip every 2nd iteration
return new array

#START
Begin with array of integers
SET newarray
WHILE iterator < length of integers array
  if iterator is even
    SET newarray += current element
  else NEXT
  end
PRINT newarray
#END

#4. a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

given a string and a character
create count variable
create iterator
iterate through the strings characters looking for character
if character in string = character
  increase count by 1
  if count is equal to 3
    return iterator
  end
end
print iterator

#START
Given a string and a character
SET count = 0
SET iterator = 0
WHILE iterator < string length
  if count = 3
    return count
  else
    if current character = character
      count + 1
    end
  iterator += 1
  end
end
PRINT count
#END

#5. a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:

Given two arrays of numbers
set a new array
add first array first number to new array
add second array first number to new array
loop until arrays are empty
print new array

#START
Given two array of numbers
SET combinedarray
while array is not empty
  remove first array first number and add to combinedarray
  remove second array first number and add to combinedarray
end
PRINT combinedarray
#END
=end
