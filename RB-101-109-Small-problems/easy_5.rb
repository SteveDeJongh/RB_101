# Small Problems Easy 5

=begin
1.
#Loop through the characters of a string getting the value of each character.
#sum the value of all characters in the string
#return sum value


# def ascii_value(string)
#   arr = string.split(//)
#   value = 0
#   arr.each do |char|
#     value += char.ord
#   end
#   value
# end

#or

def ascii_value(string)
  value = 0
  string.each_char { |char| value += char.ord }
  value
end


ascii_value("Four score")

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

2.
#given a number of minutes before or after midnight, return the current time.
# determine positive or negative time
# check for number of hours and minutes
# adjust time for 00:00 with hours and minutes change.

def time_of_day1(num)
  if num > 1349
    num = num % 1440
  elsif num < -1349
    num = num % 1440
  end

  case num <=> 0
  when + 1 then
    hours, minutes = num.divmod(60)
    return "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
  when - 1 then
    hours, minutes = num.abs.divmod(60)
    hours = 23 - hours
    minutes = 60 - minutes
    return "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
  else
    hours, minutes = num.divmod(60)
    return "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}"
  end
end

#or

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def normalize_minutes_0_through_1349(minutes)
  if minutes < 0
    minutes += MINUTES_PER_DAY
  end
  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_0_through_1349(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

#Fruther exploration 2 and 3)
T = Time.new(2022,12,11,0,0)
p T.strftime('%H:%M')

def time_of_day(num)
  time = T + (num*60) #time increments in seconds, needed to convert input minutes to seconds.
  p time.strftime('%A %H:%M') #add %A to include day of the week in ouput format.
end


p time_of_day(0) == "Sunday 00:00"
p time_of_day(-3) == "Saturday 23:57"
p time_of_day(35) == "Sunday 00:35"
p time_of_day(-1437) == "Saturday 00:03"
p time_of_day(3000) == "Tuesday 02:00"
p time_of_day(800) == "Sunday 13:20"
p time_of_day(-4231) == "Thursday 01:29"


3.

#given a time in "00:00" format, return the number of minutes before or after midnight.

def after_midnight1(time)
  split_time = time.split(":")
  total_minutes = (split_time[0].to_i * 60) + split_time[1].to_i
  return total_minutes % 1440
end

def before_midnight1(time)
  split_time = time.split(":")
  total_minutes = (split_time[0].to_i * 60) + split_time[1].to_i
  mins_before = 1440 - total_minutes
  return mins_before % 1440
end

#or

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes ==  MINUTES_PER_DAY
  delta_minutes
end

p after_midnight("02:10")
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

4.

# given a string of worth seperated by spaces, swap the first and last letter of each word.
# Seperate string into individual words
# for earch word, replace first character with last, and last character with first
# return new words in string joined with spaces

def swap(string)
  words_array = string.split(' ')
  results = []
  words_array.each do |word|
    temp1 = word[0]
    templast = word[-1]
    word[0] = templast
    word[-1] = temp1
    results << word
  end
  return results.join(' ')
end

#or

def swap1(string)
  words_array = string.split(' ')
  counter = 0
  words_array.length.times do
    words_array[counter][0], words_array[counter][-1] = words_array[counter][-1], words_array[counter][0]
    counter += 1
  end
  words_array.join(' ')
end

#or, this version creates two sperate methods to not need a counter and instead uses a single word method.

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end


def swap2(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

p swap2("String one two theater")
p swap2('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap2('Abcde') == 'ebcdA'
p swap2('a') == 'a'

5.

#remove all non-alphanumeric characters and replace them with spaces. the result should never
# have consecutive spaces

PERMITTED_CHARACTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
#or PERMITTED_CHARACTERS = ('a"..'z').to_a

def cleanup1(string)
  string_arr = string.split('')
  results = []
  string_arr.each do |x|
    if PERMITTED_CHARACTERS.include?(x)
      results << x
    else
      results << " "
    end
  end
  lastchar = ''
  clean_result = []
  results.each do |x|
    if x == " " && lastchar == " "
     next
    else
      clean_result << x
    end
    lastchar = x
  end
  clean_result.join
end

#broken up into different methods.

def check_chars(string)
  string_arr = string.split('')
  results = []
  string_arr.each do |x|
    if PERMITTED_CHARACTERS.include?(x)
      results << x
    else
      results << " "
    end
  end
  results
end

def remove_extra_spaces(string)
  results = string
  lastchar = ''
  clean_result = []
  results.each do |x|
    if x == " " && lastchar == " "
     next
    else
      clean_result << x
    end
    lastchar = x
  end
  clean_result.join
end

def cleanup(string)
  remove_extra_spaces(check_chars(string))
end

#Refactored

def cleanupRF(string)

  result = []

  string.chars.each do |char|
    if PERMITTED_CHARACTERS.include?(char)
      result << char
    else
      result << ' ' unless result.last == ' '
    end
  end
  result.join
end

p cleanupRF("---what's my +*& line?")

#using squeeze instead of a condition for space.

def cleanupSQ(string)

  result = []

  string.chars.each do |char|
    if PERMITTED_CHARACTERS.include?(char)
      result << char
    else
      result << ' '
    end
  end
  result.join.squeeze
end

p cleanupSQ("---what's my +*& line?")

6.

#Receive a string of words seperated by spaces
#assign each word a character count
#make a hash showing the number of times the different length words are included.

def word_sizes1(string)
  word_count = Hash.new

  string.split(' ').each do |word|
    if word_count.has_key?(word.length)
      word_count[word.length] += 1
    else
      word_count[word.length] = 1
    end
  end
  p word_count
end

#or

def word_sizes2(string)
  word_count = Hash.new(0) #default key value to not attempt to add to nil when creating a new key.

  string.split(' ').each do |word|
      word_count[word.length] += 1
  end
  p word_count
end

#or

def word_sizes(s)
  s.split.map(&:length).tally #tally count the occurances of each element in an array and returns a hash.
end

p word_sizes1('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes1('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes1("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes1('') == {}


7.

def word_sizes(string)
  word_count = Hash.new

  string.split(' ').each do |word|
    
    clean_word = word.gsub(/[^A-z]/,'')
    # or with word.delete('^A-Za-z')
    if word_count.has_key?(clean_word.length)
      word_count[clean_word.length] += 1
    else
      word_count[clean_word.length] = 1
    end
  end
  p word_count
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

8.

#

NUM_WORDS = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}


def alphabetic_number_sort1(arr)
  num_to_word = arr.map do |x|
    NUM_WORDS[x]
  end
  result = num_to_word.sort.map do |x|
    NUM_WORDS.key(x)
  end
end

p alphabetic_number_sort1([0,1,3,4,2])
p alphabetic_number_sort1((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

NUMBER_WORDS = %w(zero one two three four
  five six seven eight nine
  ten eleven twelve thirteen fourteen
  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by{ |number| NUMBER_WORDS[number] }
end

p alphabetic_number_sort1([0,1,3,4,2])
p alphabetic_number_sort1((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


9.

#give a string with double diggits, return a new string removing consecuqtive digits.
#split string into individual characters
#check if last character is same as current character
#if it isn't, return to string


def crunch(string)
  new_string = ''
  string.each_char do |char|
    new_string << char unless new_string.end_with?(char)
  end
  new_string
end

#or

def crunch1(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('aabbccdd') == 'abcd'
p crunch('a') == 'a'
p crunch('') == ''

10.

11.

=end
