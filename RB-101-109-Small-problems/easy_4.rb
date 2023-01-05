# Small problems Easy 4

=begin
1) Short Long Short

def short_long_short(string1, string2)
  if string1.size < string2.size
    new_string = string1 + string2 + string1
  else
    new_string = string2 + string1 + string2
  end
end

p short_long_short("abcde","fgh")

#another way:

def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |a| a.length}
  arr.first + arr.last + arr.first
end

#or

def short_long_short(str1, str2)
  str1.length > str2.length ? str2 + str1 + str2 : str1 + str2 + str1
end

2) What Century is That?

def century2 (year)
  cent = (year + 99)/100
  append = if cent.to_s.end_with?("0", "4", "5", "6", "7", "8", "9", "11", "12", "13", "14", "15", "16", "17", "18", "19")
             "th"
            elsif cent.to_s.end_with?("1")
              "st"
            elsif cent.to_s.end_with?("2")
              "nd"
            elsif cent.to_s.end_with?("3")
              "rd"
            else
            end
  return cent.to_s + append
end


#or

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + cent_ending(century)
end

def cent_ending(cent)
  return "th" if [11,12,13].include?(cent % 100)

  cent_last = cent % 10
  case cent_last
  when 0 then "th"
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else        "th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'

3) Leap Year (Part 1)

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

# Or

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

4) Leap Years (Part 2)

def leap_year?(year)
  if year > 1752
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

5) Multiples of 3 and 5

def multisum(number)
  sum = 0
  1.upto(number) do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  sum
end

# or by extracting the check to a seperate method.

def multiple?(num, divisor)
  num % divisor == 0
end

def multisum(number)
  sum = 0
  1.upto(number) do |num|
    if multiple?(num, 3) || multiple?(num, 5)
      sum += num
    end
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Further Exploration, use Enumerable.inject.

def multisum(number)
  sum = []
  1.upto(number) do |num|
    sum << num if multiple?(num, 3) || multiple?(num, 5)
  end
  sum.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

6) Running Totals

def running_total(numbers)
  total = 0
  numbers.map do |num|
    total += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

# Further Exploration, solve this problem using Enumerable#each_with_object or Enumerable#inject

# Each_with_object

def running_total1(numbers)
  sum = 0
  numbers.each_with_object([]) do |num, a|
    a << sum += num
  end
end

p running_total1([2, 5, 13]) == [2, 7, 20]
p running_total1([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total1([3]) == [3]
p running_total1([]) == []

# Inject

def running_total2(numbers)
  numbers.inject([]) { |array, num| array << num + (array.last || 0)}
end

p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []

7) Convert a String to a Number!

CHARSET = {
  "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,
  "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0
}

def string_to_integer(string)
  digits = string.chars.map { |char| CHARSET[char] }

  value = 0
  digits.each { |num| value = 10 * value + num }
  value
end


p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Further Exploration, Hexadecimal.

HEXADECIMAL = {
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5,  "6" => 6,
  "7" => 8, "9" => 9, "a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15
}

def string_to_integer(string)
  array = string.downcase.chars.map { |char| HEXADECIMAL[char] }

  value = 0
  array.each { |digit| value = 16 * value + digit}
  value
end

p string_to_integer("4D9f")

8) Convert a String to a Signed Number!

CHARSET = { #delcaring as a CONST to not need to pass into the method string_to_interger
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 7, "9" => 8, "9" => 9
}

def string_to_integer(string)
  array = string.chars.map { |char| CHARSET[char] }

  value = 0
  array.each { |digit| value = 10 * value + digit}
  value
end

def string_to_int_sign(string)
  case string[0]
  when "-" then -string_to_integer(string[1..-1])
  when "+" then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_int_sign('4321') == 4321
p string_to_int_sign('-570') == -570
p string_to_int_sign('+100') == 100

# Further Exploration, refactor to only use string_to_integer and string[1..-1] once each.

def string_to_int_sign_clean(string)
  CHARSET.has_key?(string[0]) ? clean_string = string : clean_string = string[1..-1]
  number = string_to_integer(clean_string)
  case string[0]
  when "-" then -number
  when "+" then number
  else          number
  end
end

p string_to_int_sign_clean('4321') == 4321
p string_to_int_sign_clean('-570') == -570
p string_to_int_sign_clean('+100') == 100

# Or, cleaning the string for string_to_integer, then checking for the original first 
# character to see if a sign needs to be added.

def string_to_int_sign_simp(string)
  integer = string_to_integer(string.delete('^0-9'))

  string[0] == '-' ? -integer : integer
end

p string_to_int_sign_simp('4321') == 4321
p string_to_int_sign_simp('-570') == -570
p string_to_int_sign_simp('+100') == 100

9) Convert a Number to a String!

def int_to_string(num)
  num.digits.reverse.join
end

p int_to_string(1234)

#or

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10) #re-assigns number to 123, and return last digit 4
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(1234)

10) Convert a Signed Number to a String!

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10) #re-assigns number to 123, and return last digit 4
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  if number.negative?
    number *= -1
    integer_to_string(number).prepend("-")
  elsif number.positive?
    integer_to_string(number).prepend("+")
  else
    integer_to_string(number)
  end
end

# or

def signed_integer_to_string(number)
  case number <=> 0 #spaceship operator, compares left against right, 
    #+1 if left is larger, -1 if right is larger, and 0 if values are the same.
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# Further Exploration, Refactor solution to reduce the number of integer_to_string calls to just one.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10) #re-assigns number to 123, and return last digit 4
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  prefix = ['','+','-'][number <=> 0]
  prefix + integer_to_string(number.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

=end