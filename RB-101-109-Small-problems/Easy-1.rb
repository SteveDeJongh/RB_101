=begin
1.
def repeat(string, times)
  times.times do
    puts string
  end
end

repeat("Hello world!", 5)

2.
def check_odd?(num)
  num % 2 == 0 ? "false" : "True"
end

puts check_odd?(30)
puts check_odd?(4)
puts check_odd?(3)

# Remember assignment vs equality.
simpler version

def check_odd?(num)
  num % 2 == 1
end

Further exploration, using remainder instead of modulo.

def check_odd?(num)
  num.remainder(2) != 0
end

puts check_odd?(8)

3.
def digit_list(num)
  p num.digits.reverse
end

puts digit_list(12345) == [1,2,3,4,5]
puts digit_list(98765) == [9,8,7,6,5]

alternate solutions:
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end
or
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

4.
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  array.tally
end
puts count_occurrences(vehicles)

or:

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
count_occurrences(vehicles)

5.
string = "Am i backwards?"

def reverse_sentence(string)
  splitString = string.split
  new_string = splitString.reverse.join(" ")
end
puts reverse_sentence(string)

puts reverse_sentence("Hello World") == "World Hello"
puts reverse_sentence("Reverse these words") == "words these Reverse"
puts reverse_sentence("") == ""
puts reverse_sentence("    ") == ""

Cleaner:

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

6.
def reverse_it(string)
  newString = string.split
  newString.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  newString = newString.join(" ")
end

puts reverse_it("Professional")
puts reverse_it("Walk around the block")
puts reverse_it("Launch School")

#cleaner code:

def reverse_words(string)
  words =[]
  
  string.split.each do |word|
    word.reverse! if word.length >=5 #.length and .size are the same.
    words << word
  end
  words.join(" ")
end

puts reverse_words("Launch School")

7.

def stringy(num)
  string = ""
  while num > 0
    if string.end_with?('1')
      string << '0'
    else
      string << '1'
    end
   num -= 1
  end
  return string
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)

#cleaner using indx.times. .times starts at 0 (not a countdown) so we know it'll start even.

def stringyy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end
  numbers.join
end

puts stringyy(11)

Further exploration, adding second argument with default parameter.

def stringyy(size, deff = "0")
  numbers = []

  size.times do |index|
    if deff == 0
      number = index.odd? ? 1 : 0
      numbers << number
    else
      number = index.even? ? 1 : 0
      numbers << number
    end
  end
  numbers.join
end

puts stringyy(11)
puts stringyy(11,0)

8.
array= [1,2,3,4,5,2]

def average(array)
  sum = array.sum
  count =  array.count
  return sum/count
end
#Shorter hand
def averagee(array)
  array.sum / array.length
end
#With Reduce.
def averagee(array)
  sum = array.reduce {|sum, n| sum + n}
  count = array.length.to_f
  return sum/count
end
#add a .to_f to get more accurate average.
puts averagee(array)

9.
def sum_digits(num)
  snum = num.to_s.split(//).map!(&:to_i) #.map(&:to_i) is the same as .map{|elmnt| elment.to_i}
  return snum.sum
end

puts sum_digits(28)

#Or with a loop

def sum_digits(num)
  sum = 0
  str_digits = num.to_s.chars

  str_digits.each do |num|
    sum += num.to_i
  end
  sum
end

puts sum_digits(28)

10.
def calculate_bonus(salary, torf)
  if torf
    return salary / 2
  else
    return 0
  end
end

# ternary operator use, should try to use more for booleans

def calculate_bonus(salary, torf)
  torf ? (salary /2) : 0
end

puts calculate_bonus(3000,true)
puts calculate_bonus(2800,true) == 1400
puts calculate_bonus(3000,false) == 0
puts calculate_bonus(50000,true) == 25000
=end