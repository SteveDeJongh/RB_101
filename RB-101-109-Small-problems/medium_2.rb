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