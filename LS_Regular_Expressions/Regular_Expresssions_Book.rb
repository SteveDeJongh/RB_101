# Regular Expressions Book

# Basic Matching Exercises

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

# Characters Classes

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

# Character Class Shortcuts

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

# Anchors

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

# Quantifiers.