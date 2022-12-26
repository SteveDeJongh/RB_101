# RB101-RB109 - Small Problems - Easy 9

=begin
1)
def greetings(name, details)
  "Hello, #{name.join(" ")}!"\ #further exploration using a line break.
  " Nice to have a #{details[:title]} #{details[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."
# important to not use puts, as that would make the method return nil.

2)

def twice(num)
  if num.to_s.length < 2
    num * 2
  elsif numdub?(num)
    num
  else
    num * 2
  end
end

def numdub?(num)
  snum = num.to_s
  middle = snum.length/2
  firsthalf = snum[0..middle-1]
  secondhalf = snum[middle..-1]
  firsthalf == secondhalf
end

# or all in one

def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1] #this checks edge case of single character number.
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10

3)

def negative(num)
  case num.to_s[0]
  when "-"
    num
  when 0
    num
  else
  -num
  end
end

# or

def negative(num)
  num > 0 ? -num : num
end

# or 

def negative(num)
  -num.abs #this returns the numbers abolsolute value stripping it of it's sign, then prepends
  # the abs with a negative symbol.
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

4)

def sequence(num) #using map to return an array
  (1..num).map do |x|
    x
  end
end

# def sequence(num) #simply converting a range to an array
#   (1..num).to_a
# end

# Further exploration to handle negative numbers

def sequenceneg(num)
  if num <= 0
    (num..1).to_a
  else
    (1..num).to_a
  end
end

def sequenceneg1(num) #refactored
  num <= 0 ? (num..1).to_a : (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequenceneg(-5)
p sequenceneg1(-4)
p sequenceneg(0)

5)

UPPERCASECHARS = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def uppercase?(string)
  string.chars.all? do |char|
    UPPERCASECHARS.include?(char) || char =~ /[^A-Za-z]/
  end
end

def uppercase?1(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

6)

def word_lengths(string)
  string.split.map do |word|
    word << ' ' << (word.length - 1).to_s
  end
end

#or

def word_lengths1(string)
  words = string.split

  words.map do |word|
    word + " " + word.length.to_s
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []

7)
def swap_name(name)
  fullname = name.split
  "#{fullname[1]}, #{fullname[0]}"
end

def swap_name1(name)
  name.split.reverse.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
p swap_name1('Joe Roberts') == 'Roberts, Joe'

8)

def sequence(count, pattern) #using the count as a mutliplier for the result
  results = []
  count.times do |x|
    results << (pattern * (x+1))
  end
  results
end

#or

def sequence1(count, pattern) #incrementing the return number with the pattern.
  sequence = []
  number = pattern

  count.times do
    sequence << number
    number += pattern
  end
  sequence
end

#or 

def sequence (count, pattern)
  (1..count).map { |val| val * pattern}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence1(4, -7) == [-7, -14, -21, -28]
p sequence1(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

9)

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3)/3
  case
  when average >= 90 then "A"
  when average >= 80 then "B"
  when average >= 70 then "C"
  when average >= 60 then "D"
  else                    "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

10)

def buy_fruit(list)
  grocery_list = []
  list.each do |x|
    x[1].times do 
      grocery_list << "#{x[0]}" 
    end
  end
  grocery_list
end

# refactored for easier readability.

def buy_fruit1(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times {expanded_list << fruit}
  end
  expanded_list
end

#or 

def buy_fruit2(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit1([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

11)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def anagrams(array)
  result = array.group_by {|word| word.chars.sort}

  result.each_value do |results|
   p "------"
   p results
 end
 exit
end

p anagrams(words)

def annagrams1(words)
  result = {}

  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end

  result.each_value do |v|
    puts "------"
    p v
  end
  exit #need something to not return return value of each_value as well.
end

p annagrams1(words)


=end