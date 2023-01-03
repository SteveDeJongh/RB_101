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

# string#count([otherstring]) defines a set of characters to cound. Ie "Hello".count('lo') = 3
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

=end

def triangle(num1, num2, num3) # Brute force comparison
  sorted_measurements = [num1, num2, num3].sort
  return :invalid if (sorted_measurements[0]+sorted_measurements[1]) < sorted_measurements[2]
  return :invalid if num1 <= 0 || num2 <= 0 || num3 <= 0
  return :equilateral if num1 == num2 && num1 == num3
  return :isosceles if sorted_measurements[0] == sorted_measurements[1] || sorted_measurements[1] == sorted_measurements[2]
  return :scalene if num1 != num2 || num1 != num3 || num2 != num3

end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid