# RB101-RB109 - Small Problems - Medium 1

require 'pry'

=begin

1) Longest Sentence

text1 = 'Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.'

def longest_sentence(text)
  sentences = text.split('.'||'!'||'?') # could be changed to regex "/\.|\?|\!/"
  sentences.map do |x|
    x.split.size
  end.sort[-1]
end

# Or

def longest_sentence1(text)
  sentences = text.split(/\.|\!|\?/)
  longest_sentence = sentences.max_by {|sentence| sentence.split.size}
  longest_sentence_size = longest_sentence.split.size
  longest_sentence = longest_sentence.strip # #strip removes leading and trailing whitespace
  p "#{longest_sentence}"
  p "Containing #{longest_sentence_size} words"
end

#longest_sentence1(text1)

# Further exploration, keep end of sentence punctuation in result string.

def longest_sentence_with_punc(text)
  sentences = text.split(/(?<=[.!?])/)
  longest_sentence = sentences.max_by {|sentence| sentence.split.size}
  longest_sentence_size = longest_sentence.split.size
  longest_sentence = longest_sentence.strip # #strip removes leading and trailing whitespace
  p "#{longest_sentence}"
  p "Containing #{longest_sentence_size} words"
end

#longest_sentence_with_punc(text1)

# Further exploration, longest word or longest paragraph?

def longest_word(text)
  words = text.split()
  longest_word = words.max_by {|word| word.size}
  longest_word_size = longest_word.size
  p "#{longest_word}"
  p "Containing #{longest_word_size} characters"
end

longest_word(text1)

# By largest paragraph

def longest_paragraph(text)
  paragraph = text.split(/\n\n/) # split on 2 new lines characters for paragraph.
  longest_paragraph = paragraph.max_by { |paragraph| paragraph.split().size }
  longest_paragraph_size = longest_paragraph.split.size
  p "#{longest_paragraph}"
  p "Contain #{longest_paragraph_size} words."
end

longest_paragraph(text1)

2) Now I Know My ABCs

# Letter blocks:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(word)
  word = word.upcase
  BLOCKS.none? { |block| word.count(block) >= 2}
end

# string#count([otherstring]) defines a set of characters to count. Ie "Hello".count('lo') = 3
# array#none? passes each element of the array to the given block. Returns true if the block returns true for all elements.

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

3) Lettercase Pecentage Ratio

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_percentages(string)
  results = {}
  num_of_chars = string.size
  characters = string.chars
  results[:uppercase] = (characters.count { |char| UPPERCASE.include?(char) }) / num_of_chars.to_f * 100.0
  results[:lowercase] = (characters.count { |char| LOWERCASE.include?(char) } ) / num_of_chars.to_f * 100.0
  results[:neither] = (characters.count { |char| char =~ /[^A-Za-z]/ } ) / num_of_chars.to_f * 100.0
  results
end

# or split into mutliple methods to maintain count variables, along with regex instead of character arrays.

def letter_percentages1(string)
  perecentages = {}
  counts = {}
  characters = string.chars
  length = string.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/}
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  
  calculate(perecentages, counts, length)

  perecentages
end

def calculate(perecentages, counts, length)
  perecentages[:uppercase] = ((counts[:uppercase] / length.to_f) * 100).round(1)
  perecentages[:lowercase] = ((counts[:lowercase] / length.to_f) * 100).round(1)
  perecentages[:neither] = ((counts[:neither] / length.to_f) * 100).round(1)
end

p letter_percentages1('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages1('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages1('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages1('abcdefGHI')

4) Matching Parentheses?

def balanced?(string) # Only checks quantities, not for correct sequence.
  characters = string.chars
  left = characters.count { |char| char == '('}
  right = characters.count { |char| char == ')'}
  left == right ? true : false
end

def string_strip(string) # returns array of parentheses from string in sequence.
  string.chars.select { | char | char == '(' || char == ')' }
end

def balanced1?(string)
  parentheses = string_strip(string)
  return false if parentheses.length.odd?
  return true if parentheses.empty?
  
  stack = []

  parentheses.each do |bracket|
    if bracket == '('
      stack << bracket
    elsif bracket == ')'
      return false unless stack[-1] == '('
      stack.pop
    end
  end

  stack.empty? ? true : false
end

# or

def balanced2?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0 # ensure a '(' comes before a ')'
  end

  parens.zero? # Returns true if equal number of left and right parens.
end

p balanced1?('What (is) this?') == true
p balanced1?('What is) this?') == false
p balanced1?('What (is this?') == false
p balanced1?('((What) (is this))?') == true
p balanced1?('((What)) (is this))?') == false
p balanced1?('Hey!') == true
p balanced1?(')Hey!(') == false
p balanced1?('What ((is))) up(') == false

# Further exploration, check for other characters.

def balanced_char?(string, char1, char2) # checks string against a pair of assigned characters.
  char_pairs = 0
  if char1 != char2
    string.each_char do |char|
      char_pairs += 1 if char == char1
      char_pairs -= 1 if char == char2
      break if char_pairs < 0
    end
    char_pairs.zero?
  else
    string.each_char do |char|
      char_pairs += 1 if char == char1
    end
    return char_pairs % 2 == 0
  end
end

def all_chars_balanced?(string)
  balanced_char?(string, '(', ')') &&
  balanced_char?(string, '[', ']') &&
  balanced_char?(string, '{', '}') &&
  balanced_char?(string, '<', '>') &&
  balanced_char?(string, '"', '"') &&
  balanced_char?(string, "'", "'")
end

p balanced_char?("What [s] wrong with you?", '[', ']') == true
p all_chars_balanced?("What's wrong' ( )with you ?") == true

5) Triangle Sides

def triangle(num1, num2, num3) # Brute force comparison
  sorted_measurements = [num1, num2, num3].sort
  return :invalid if (sorted_measurements[0]+sorted_measurements[1]) < sorted_measurements[2]
  return :invalid if num1 <= 0 || num2 <= 0 || num3 <= 0
  return :equilateral if num1 == num2 && num1 == num3
  return :isosceles if num1 == num2 || num1 == num3 || num2 == num3
  return :scalene if num1 != num2 && num1 != num3 && num2 != num3

end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# or

def triangle1(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0) # 2 seperate case possibilities, not chained.
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle1(3, 3, 3) == :equilateral
p triangle1(3, 3, 1.5) == :isosceles
p triangle1(3, 4, 5) == :scalene
p triangle1(0, 3, 3) == :invalid
p triangle1(3, 1, 1) == :invalid

6) Tri-Angles

def triangle(deg1, deg2, deg3)
  angles = [deg1, deg2, deg3]
  case
  when angles.include?(0) || angles.reduce(:+) != 180
    :invalid
  when angles.include?(90)
    :right
  when deg1 < 90 && deg2 < 90 && deg3 < 90 # or written as: angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

7) Unlucky Days

def friday_13th(year) # This method loops over every single day which works, but is unnecessary.
  start_date = Time.new(year,1,1)
  fridays = 0

  loop do
    if start_date.friday? && start_date.day == 13
      fridays += 1
      start_date += 86400
    else
      start_date += 86400
    end
    break if start_date.year != year
  end
  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# or

require 'date' # require date as the "date" class is not part of the core library.

def friday_13th1(year)
  bad_days = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    bad_days += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  bad_days
end

p friday_13th1(2015) == 3
p friday_13th1(1986) == 1
p friday_13th1(2019) == 2

# Further Exploration, count number of months that have 5 fridays. Brute force

def five_fridays(year)
  start_date = Date.civil(year,1,1)
  count = 1
  five_fridays = 0

  12.times do
    fridays = 0
    loop do
      break if start_date.month == count + 1 || start_date.year == year + 1
      fridays += 1 if start_date.friday?
      start_date = start_date.next_day
    end
    count += 1
    five_fridays += 1 if fridays >= 5
  end
  five_fridays
end

p five_fridays(2015)

# checking for leap year, iterating over every day, and adding to a hash with a default value.

def five_fridays1(year)
  days_in_year = Date.leap?(year) ? 366 : 365
  num_fridays = Hash.new(0)
  day = Date.new(year)

  days_in_year.times do
    num_fridays[day.mon] += 1 if day.friday?
    day += 1
  end
  num_fridays.values.count(5)
end

p five_fridays1(2015)

8) Next Featured Number Higher than a Given Value

def featured(num) # Brute force.
  next_featured_num = nil
  curr_num = num

  loop do
    curr_num += 1
    if curr_num % 7 == 0 && curr_num.odd? && curr_num.digits.uniq! == nil
      next_featured_num = curr_num
    elsif curr_num > 9999999999
      next_featured_num = "Error"
    end
    break if next_featured_num != nil
  end
  next_featured_num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


def featured1(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end
  
  'Error, no possible further featured number.'
end

p featured1(12) == 21
p featured1(20) == 21
p featured1(21) == 35
p featured1(997) == 1029
p featured1(1029) == 1043
p featured1(999_999) == 1_023_547
p featured1(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

9) Bubble Sort # revisit

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index-1], array[index] = array[index], array[index-1]
      swapped = true
    end
    break unless swapped
  end
end

arr = [3,2,1]
p bubble_sort!(arr)
p arr

10) Sum Square - Square Sum

def sum_square_difference(num)
  sum_of_num = 0
  sum_of_square = 0

  1.upto(num) do |count|
    sum_of_num += count
    sum_of_square += count**2
  end

  sum_of_num**2 - sum_of_square
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=end

# 1) Longest Sentence (8 minutes)
# Write a program that reads the content of a text file and then prints the longest sentence
#  in the file based on number of words. Sentences may end with periods (.), exclamation points
#   (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending
#    characters should be treated as a word. You should also print the number of words in the longest sentence.

# Problem:
# Input: a string of text
# output: the longest sentence, and integer representing the number of words in the longest string
# Rules:
  # setence can finish with ". ! ?"
  # anything seperated by a space should be treated as it's own word.
  # 

# Sample text:

# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.

# returns 86

# Data:
# strings, arrays

# Alogorithm:
# define `longest_sent` method with 1 paramter `text`
#   initialize results to `text` split on . ! ?
#   iterate over results and replacing the contents with the count of words in that string
#   return the largest number
# end

# Code:

# text = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."

# def longest_sent(text)
#   results = text.split(/\.|\!|\?/)
#   longest_string = results.max_by{ |string| string.split().size }.strip
#   # p longest_string
#   p "The longest string is: #{longest_string}."
#   p "It contains #{longest_string.split.size} words."
# end

# longest_sent(text)

# 2) Now know my ABCs ( 10 minutes )

# Problem:
# Input: a word
# Output: true or false
# rules:
  # each letter block can be used only once
  # if the letter block is needed again in the word, return false
  # return true if the word can be spelled using a letter block only once

  # Letter blocks:
  # B:O   X:K   D:Q   C:P   N:A
  # G:T   R:E   F:S   J:W   H:U
  # V:I   L:Y   Z:M

# Examples:
# block_word?('BATCH') == true
# block_word?('BUTCH') == false
# block_word?('jest') == true

# Data:
# strings, arrays

# Algorithm:
# intiialize `block_word?` method with 1 paramter `input`
#   Initialize `blocks` array containing all letter blocks
#   for each character in the `input` word
#     check if the character is available on one of the blocks in letter blocks
#     if it is, remove the block from blocks
#     if it isn't, return false
#   return true
#     end

# code:
# def block_word?(word)
#   blocks = [["b", "o"], ["x","k"], ["d","q"], ["c","p"], ["n",'a'], ['g','t'], ['r','e'],
#             ['f','s'], ['j','w'], ['h','u'], ['v','i'], ['l','y'], ['z','m']]
#   word.downcase.chars.each do |char|
#     if blocks.any? {|block| block.include?(char)}
#       blocks.delete_if {|block| block.include?(char)}
#     else
#       return false
#     end
#   end
#   true
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

# 3) Lettercase Percentage Ratio ( 10 minutes)

#Problem: 
# Input: a string
# Output: a hash
# rules:
  # hash to be made up of uppercase, lowercase, and neither keys
  # values to be percentages of characters in input string are either category
  # percentages to be rouned to 1 deicmal point

# Examples:

# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p etter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Data: 
# strings, hashes, arrays?

# Algorithm:

# define `letter_percentages` method with 1 parameter `input`
#   initialize array for uppercase letters
#   initialize array for lowercase letters
#   initialize lowercase, uppercase, neither variables to 0
#   iterate over characters in the input string
#    check if they are in uppercase array
#       increase uppercase by 1
#     check if it's in lowercase array
#       increase lowercase by one
#     otherwise
#       increase neither by 1
#   end
#   intiailize charcount to string size
#   initialize hash to {lowercase: (uppercase / charcount).round(1), uppercase: 0, neither: 0}
# end

# Code:

# def letter_percentages(input)
#   uppercase_letters = ('A'..'Z').to_a
#   lowercase_letters = ('a'..'z').to_a
#   uppercase = 0
#   lowercase = 0
#   neither = 0
#   input.chars.each do |char|
#     if uppercase_letters.include?(char)
#       uppercase +=1
#     elsif lowercase_letters.include?(char)
#       lowercase += 1
#     else
#       neither +=1
#     end
#   end
#   charcount = input.size.to_f
#   {lowercase: (lowercase / charcount)*100.round(1), uppercase: (uppercase / charcount)*100.round(1), neither: (neither / charcount)*100.round(1)}
# end

# def letter_percentages(string)
#   counts = {}
#   length = string.size.to_f
#   input = string.chars

#   counts[:lowercase] = input.count { |char| char =~ /[a-z]/}/ length * 100 .round(1)
#   counts[:uppercase] = input.count {|char| char =~ /[A-Z]/}/ length * 100 .round(1)
#   counts[:neither] = input.count { |char| char =~ /[^a-zA-Z]/}/ length * 100 .round(1)
#   counts
# end

# p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# 4) Matching Parentheses? (8 minutes)

# Problem:
# Input: string
# Output: true or false
# Rules:
  # number of open and closes parentheses must be equal
  # parentheses must appear in correct order and be balanced
    # ( open before close )
  # parentheses may be nested

# Examples:
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Data:
# Strings, booleans

# Algorithm:
# define `balanced?` method with 1 parameter `input`
#   initialize count
#   iterate over each character in input
#     if the character is a "("
#       increase count by 1
#     if character is ")"
#       decrease count by 1
#     end
#     return false if count is less than 1
#   end
#   return true if count is 0, otherwise false
# end

 # Code:

#  def balanced?(input)
#   count = 0
#   input.chars.each do |char|
#     count += 1 if char == "("
#     count -=1 if char == ")"
#     return false if count < 0
#   end
#   count == 0 ? true : false
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# 5) Triangle Side (8 minutes)

# Problem:
# Input: 3 numbers
# Output: symbol
# Rules:
  # equilateral = all 3 sides are equal
  # isosceles = 2 side are of equal length
  # scalene = all 3 sides are different
  # to be valid, all sides must have a length greater than 0 AND the 2 shortest sides combined but be greater than the longest side

# Examples:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# Data:
# symbols, integers

# Algorithm:

# define `triangle` method with 3 parameters `side1`, `side2`, `side3`
#   check if triangle is valid
#     are all 3 sides greater than 0?
#     are the two smallest sides greater than the longest side?
  
#   check if all 3 sides are equal
#     if they are return equilateral
#   check if two sides are the same
#     return isosceles
#     otherwise return scalene
#     end

# Code:

# def triangle(s1, s2, s3)
#   sides = [s1,s2,s3].sort
#   return :invalid if (sides.any? {|side| side <= 0}) || ((sides[0]+sides[1]) < sides[2])
#   return :equilateral if sides[0] == sides [1] && sides[1] == sides[2]
#   return :isosceles if sides[0] == sides[1] || sides[1] == sides[2]
#   return :scalene
# end


# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

# 6) Tri-Angles ( 6 minutes )

# Problem:
# Input: 3 integers
# Output: symbol
# Rules:
  # to be valid, triangle angles must add up to 180 and none be less than 0
  # for an right triangle, 1 angle must be 90
  # for an acute triangle, all 3 angles must be less than 90
  # for obtuse, one angle must be greater than 90

# Examples:
# triangle(60, 70, 50) == :acute
# triangle(30, 90, 60) == :right
# triangle(120, 50, 10) == :obtuse
# triangle(0, 90, 90) == :invalid
# triangle(50, 50, 50) == :invalid

# Data:
# Integers, symbols, arrays

# Algorithm:
# define `triangle` method with 3 paramters `a,b,c,`
#   check if triangle is valid by checking sum of abc, and that none of abc are less than 0
#     return invalid if true
#   check if any of the angles are 90
#   check if all three are less than 90
#   check if any is greather than 90
# end

# Code:

# def triangle(a,b,c)
#   angles = [a,b,c]
#   return :invalid if (angles.any? {|side| side <= 0}) || angles.sum != 180
#   return :right if angles.any? {|side| side == 90}
#   return :acute if angles.all? {|side| side < 90}
#   return :obtuse if angles.any? {|side| side > 90}
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

# 7) Unlucky days (:38) - :46

# Problem:
# Input: integer representation of a year
# Output: integer representation fo the number of friday the 13ths for that year
# Rules:
  # For the integer to increase, date must be 13 and day must be friday
  # only gregorian calendar years will be used

# Examples:
# friday_13th(2015) == 3
# friday_13th(1986) == 1
# friday_13th(2019) == 2

# Data:
# Integers

# Algorithm:
# define `friday_13th` method with 1 parameter `year`
#   initialize `count`
#   iterate over every 13th day of each month in the given year
#   for that date, check if the day is `friday`
#     if it is, increase count by 1
#   return count
# end

# Code:

# require 'date'

# def friday_13th(year)
#   count = 0
#   (1..12).each do |month|
#     # Date.new(year,month,13).friday? ? count += 1 : next # Either option works.
#     Date.parse("#{year}-#{month}-13").friday? ? count += 1 : next
#   end
#   count
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

# 8) Next Featured Number Higher than a Given Value (:54) (1:08)

# Problem:
# Input: integer
# Output: integer
# Rules:
  # number must be higher than given integer
  # number must be odd
  # number must be divisible by 7
  # numbers digits must only appear once

# Examples:

# featured(12) == 21
# featured(20) == 21
# featured(21) == 35
# featured(997) == 1029
# featured(1029) == 1043
# featured(999_999) == 1_023_547
# featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# Data:
# Integers

# Algorithm:
# initialize `featured` method with 1 paramter `input`
#   multi = find current multiplier of 7 to reach input
#   loop
#     initialize result to multi * 7
#     check if result is odd, and has unique digits
#     if it is, return result
#     otherwise increase multi by 1
#     break if results size is greater than 10
#     end

# Code:

# def featured(input)
#   multiplier = (input / 7) + 1

#   loop do
#     num = multiplier * 7
#     return num if num.odd? && num.digits == num.digits.uniq
#     multiplier += 1
#     break if num >= 9876543210
#   end

#   "There is no possible number that fulfills those requirements"
# end


# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# 9) Bubble Sort ( 31 minutes)

# Problem:
# Input: array of digits
# Output: sorted array of digits from smallest to largest
# Rules:
  # current digit must be less than next digit
  # Mutate the original collection

# Examples:
# array = [5, 3]
# bubble_sort!(array)
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Data:
# Arrays, integers, strings

# Algorithm:

# define `bubble_sort!` with 1 parameter `input`
#   iterate over elements in the array
#     if current element is smaller than previous element, swap them and start again from the start
#     if a swap is made, start over from Beginning
#     once no swap has been made, exit and return the array
#   once all swaps are done, return array
# end

# Code:
# def bubble_sort!(input)
#   loop do
#     index = 0
#     loop do
#       if input[index] > input[index+1]
#         input[index], input[index+1] = input[index+1], input[index]
#         index = 0
#       else
#         index += 1
#       end
#       break if index == (input.size - 1)
#     end
#     break if index == (input.size - 1)
#   end
# end

# def bubble_sort!(input)
#   loop do
#     swapped = false
#     1.upto(input.size - 1) do |index|
#       next if input[index - 1] <= input[index]
#       input[index - 1], input[index] = input[index], input[index-1]
#       swapped = true
#     end
#     break unless swapped
#   end
# end


# p array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

# p array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# 10) Sum Square - Square Sum ( 7 minnutes )

# Problem:
# Input: 1 integer
# Output: integer
# Rules:
  # numbers to be used are up to and include input num
  # (sum of numbers) squared - (numbers suared) sum

# Examples:
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

# Data:
# Integers, arrays

# Algorithm:
# define sum_square_differene method with 1 parameter `num`
#   initialize `numbers` to an array containing all the numbers up to and including num
#   initialize `squared` to the resulting sum of the `numbers` array numbers squared
#   initialize `summed` to the result sum of each number squared.
#   return squared - summed
# end

# Code:
# def sum_square_difference(num)
#   numbers = (1..num).to_a
#   squared = numbers.sum ** 2
#   summed = numbers.map{|n| n**2}.sum
#   squared - summed
# end

# p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150