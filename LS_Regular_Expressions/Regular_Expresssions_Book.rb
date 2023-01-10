# Regular Expressions Book

##################################### Basic Matching Exercises ####################################

#1) 

# string1 = 'Kx'
# string2 = 'BlacK'
# string3 = 'kelly'

# puts "String1 has 'X'" if string1.match?(/K/)
# puts "String2 has 'X'" if string2.match?(/K/)
# puts "String3 has 'X'" if string3.match?(/K/)

# 2)

# string1  = 'Henry'
# string2  = 'perch'
# string3  = 'golf'

# puts "String1 has 'x, or X'" if string1.match?(/H/i) # Or /(h|H)/
# puts "String2 has 'x, or X'" if string2.match?(/H/i) # Or /(h|H)/
# puts "String3 has 'x, or X'" if string3.match?(/H/i) # Or /(h|H)/

# 3)

# string1 = "snapdragon"
# string2 = "bearded dragon"
# string3 = "dragoon"

# puts "String1 contains 'dragon'" if string1.match?(/dragon/)
# puts "String2 contains 'dragon'" if string2.match?(/dragon/)
# puts "String3 contains 'dragon'" if string3.match?(/dragon/)

# 4)

# string1 = "banana"
# string2 = "orange"
# string3 = "pineapples"
# string4 = "strawberry"
# string5 = "raspberry"
# string6 = "grappler"

# puts 'String1 contains "banana"' if string1.match?(/(banana|orange|apple|strawberry)/)
# puts 'String2 contains "orange"' if string2.match?(/(banana|orange|apple|strawberry)/)
# puts 'String3 contains "pineapples"' if string3.match?(/(banana|orange|apple|strawberry)/)
# puts 'String4 contains "strawberry"' if string4.match?(/(banana|orange|apple|strawberry)/)
# puts 'String5 contains "raspberry"' if string5.match?(/(banana|orange|apple|strawberry)/)
# puts 'String6 contains "grappler"' if string6.match?(/(banana|orange|apple|strawberry)/)

# 5)

# string1 = 'This line has spaces'
# string2 = 'This,line,has,commas,'
# string3 = 'No-spaces-or-commas'

# puts "String1 contains ',' or ' '" if string1.match?(/ |,/) # space and , characters do not need to be escaped.
# puts "String2 contains ',' or ' '" if string2.match?(/ |,/) # space and , characters do not need to be escaped.
# puts "String3 contains ',' or ' '" if string3.match?(/ |,/) # space and , characters do not need to be escaped.

# 6)

# string1 = "blueberry"
# string2 = "blackberry"
# string3 = "black berry"
# string4 = "strawberry"

# puts "string1 contains Blueberry or blackberry." if string1.match?(/(blue|black)berry/)
# puts "string2 contains Blueberry or blackberry." if string2.match?(/(blue|black)berry/)
# puts "string3 contains Blueberry or blackberry." if string3.match?(/(blue|black)berry/)

##################################### Characters Classes ####################################

# 1)

# string1 = 'Kitchen Kaboodle'
# string2 = 'Reds and blues'
# string3 = 'kitchen Servers'

# puts "String1 contains 'K','k', or 's'" if string1.match?(/[Kks]/)
# puts "String2 contains 'K','k', or 's'" if string2.match?(/[Kks]/)
# puts "String3 contains 'K','k', or 's'" if string3.match?(/[Kks]/)

# 2)

# string = "My cats, Butterscotch and Pudding, like to
# sleep on my cot with me, but they cut my sleep
# short with acrobatics when breakfast time rolls
# around. I need a robotic cat feeder."

# puts "String 1 contains [cbCB][aouAOU][tT]" if string.match?(/[cbCB][aouAOU][tT]/) # 9 times

# Or /[bc][aou][t]/i

# 3) Base 20 digits include the decimal digits 0 through 9, and the letters A through J 
# in upper or lowercase. Write a regex that matches base 20 digits. Test it with these strings:

# string = "0xDEADBEEF
# 1234.5678
# Jamaica
# plow ahead"

# puts "Contains" if string.match?(/[0-9a-j]/i)

# 4)

# string1 = "0x1234"
# string2 = "Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count."
# string3 = "The quick brown fox jumps over the lazy dog"
# string4 = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"

# puts "String1 contains other letters than 'x' or 'X'." if string1.match?(/[a-wyz]/i) #or [A-WYZa-wyx]
# puts "String2 contains other letters than 'x' or 'X'." if string2.match?(/[a-wyz]/i) #or [A-WYZa-wyx]
# puts "String3 contains other letters than 'x' or 'X'." if string3.match?(/[a-wyz]/i) #or [A-WYZa-wyx]
# puts "String4 contains other letters than 'x' or 'X'." if string4.match?(/[a-wyz]/i) #or [A-WYZa-wyx]

# 5)

# /[^xX]/ is not a valid answer as that would include all non-alphabetical characters.

# 6) Write a regex that matches any character that is not a letter. Test it with these strings:

# /[^A-za-z]/ or /[^a-z]/i

# 7) Are /(ABC|abc)/ and /[Aa][Bb][Cc]/ equivalent regex?

# No, /(ABC|abc)/ matches full strings "ABC" and 'abc', while /[aA][bB][cC]/ would match 'Abc', 'AbC', 'ABC', etc...

# 8) Are /abc/i and /[Aa][Bb][Cc]/ equivalent regex?

# Yes they are equivalent in their current states.

# 9) Challenge: write a regex that matches a string that looks like a simple negated character class range, e.g., '[^a-z]'

# /\[\^[A-Za-z0-9]-[A-Za-z0-9]\]/

##################################### Character Class Shortcuts ####################################

# 1) Write a regex that matches any sequence of three characters delimited by whitespace characters 
# (the regex should match both the delimiting whitespace and the sequence of 3 characters)

# /\s...\s/

# 2) test /\s...\s/ on this text:
#"Doc in a big red box.
#Hup! 2 3 4"

# Only "big" and "2 3" match. This is due to our regex match is five characters long.
# "red" doesn't match as the leading whitespace is consumed in the "big" match.

# 3) Write a regex that matches any four digit hexadecimal number that is both preceded and followed by whitespace.

# /\s[\h][\h][\h][\h]\s/ # [] brackets are not needed for "\h"

# 4) Write a regex that matches any sequence of three letters.

# /[a-zA-Z][a-zA-Z][a-zA-Z]/ or /[a-z][a-z][a-z]/i

##################################### Anchors ####################################

# 1) Write a regex that matches the word The when it occurs at the beginning of a line.

# /^The\b/ # or /\AThe\b/

# 2) Write a regex that matches the word cat when it occurs at the end of a line.

# /\bcat$/ # or /\bcat\z/

# 3) Write a regex that matches any three-letter word; a word is any string comprised entirely of letters.

# /\b[a-z][a-z][a-z]\b/i

# 4) Challenge: Write a regex that matches an entire line of text that consists of exactly 3 words as follows:

# The first word is A or The.
# There is a single space between the first and second words.
# The second word is any 4-letter word.
# There is a single space between the second and third words.
# The third word -- the last word -- is either dog or cat.

# /^(A|The) [a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z] (dog|cat)$/ # OR /\A(A|The) [a-zA-Z][a-zA-Z][a-zA-Z][a-zA-Z] (dog|cat)\z/

##################################### Quantifiers ####################################

# 1) Write a regex that matches any word that begins with b and ends with an e, and has any number of letters in-between.

# /\bb[a-z]*e\b/

# 2) Write a regex that matches any line of text that ends with a ?

# /^.*\?$/ # as this "/\?$/" would only match the question mark.

# 3) Write a regex that matches any line of text that ends with a ?, 
# but does not match a line that consists entirely of a single ?.

# /^.+\?$/

# 4) Write a regex that matches any line of text that contains nothing but a URL. For this exercise, a URL 
# begins with http:// or https://, and continues until it detects a whitespace character or end of line.

# /^https?:\/\/\S*$/

# 5) Modify your regex from the previous exercise so the URL can have optional leading 
# or trailing whitespace, but is otherwise on a line by itself.

# /^\s*https?:\/\/\S*\s*$/

# 6) Modify your regex from the previous exercise so the URL can appear anywhere on each line, 
# so long as it begins at a word boundary

# /\bhttps?:\/\/\S*/

# 7) Write a regex that matches any word that contains at least three occurrences of the letter i.

# /\b[a-z]*i[a-z]*i[a-z]*i[a-z]*\b/i # OR /\b([a-z]*i){3}[a-z]*\b/i

# 8) Write a regex that matches the last word in each line of text. For this exercise, 
# assume that words are any sequence of non-whitespace characters.

# /\S+$/

# 9) Write a regex that matches lines of text that contain at least 3, but no more than 6, consecutive comma separated 
# numbers. You may assume that every number on each line is both preceded by and followed by a comma.

# /^,(\d+,){3,6}$/

# 10) Write a regex that matches lines of text that contain at least 3, but no more than 6, consecutive comma separated
# numbers. In this exercise, you can assume that the first number on each line is not preceded by a comma, 
# and the last number is not followed by a comma.

# /^(\d+,){2,5}\d+$/

# 11) Challenge: Write a regex that matches lines of text that contain either 3 comma separated numbers
# or 6 or more comma separated numbers.

# /(^(\d+,){2}\d$|^(\d+,){5,}\d+$)/ # This would likely be split into two expresssions in a program.

# 12) Challenge: Write a regex that matches HTML h1 header tags

# /<h1>.*?<\/h1>/

# Need to use the non-greedy quantifier to match the text inbetween <h1> and </h1> tags.

##################################### Using Regular Expresssions ##################################### 

=begin
1) Write a method that returns true if its argument looks like a URL, false if it does not.

def url?(string)
  !!string.match(/\Ahttps?:\/\/\S+\z/)
end

p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false

2) Write a method that returns all of the fields in a haphazardly formatted string. A variety of spaces, tabs, and commas 
# separate the fields, with possibly multiple occurrences of each delimiter.

def fields(string)
  string.split(/[ \t,]+/)
end

p fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

p fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

p fields("Pete \t 201")
# -> ["Pete", "201"]

p fields("Pete \n 201")
# -> ["Pete", "\n", "201"]

3) Write a method that changes the first arithmetic operator (+, -, *, /) in a string to a '?' 
# and returns the resulting string. Don't modify the original string.

def mystery_math(string)
  string.sub(/[+\-*\/]/, '?')
end

p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'

4) Write a method that changes every arithmetic operator (+, -, *, /) to a '?' 
# and returns the resulting string. Don't modify the original string.

def mysterious_math(string)
  string.gsub(/[+\-*\/]/, '?')
end

p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

5) Write a method that changes the first occurrence of the word apple, blueberry, or cherry in a string to danish

def danish(string)
  string.sub(/\b(apple)|(blueberry)|(cherry)\b/, 'danish')
end

p danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'

p danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'

p danish('The cherry of my eye')
# -> 'The danish of my eye'

p danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'

p danish('I love pineapple')
# -> 'I love pineapple'

6) Challenge: write a method that changes strings in the date format 2016-06-17 to the format 17.06.2016. 
#You must use a regular expression and should use methods described in this section.

def format_date(date)
  date.gsub(/(\d\d\d\d)-(\d\d)-(\d\d)/, '\3.\2.\1') #"()" are capture groups.
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)

7) Challenge: write a method that changes dates in the format 2016-06-17 or 2016/06/17 to the format
# 17.06.2016. You must use a regular expression and should use methods described in this section.

def format_date(string)
  string.sub(/\A(\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
        .sub(/\A(\d\d\d\d)\/(\d\d)\/(\d\d)\z/, '\3.\2.\1')
end

#or

def format_date(string)
  data_regex = /\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/ # optionally assigning to a variable to use in sub/gsub.
  string.sub(/\A(\d\d\d\d)([\-\/])(\d\d)\2(\d\d)\z/, '\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)

=end 