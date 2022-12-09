# Small problems Easy 4

=begin
1.
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

2.

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
  century.to_s + cent_suffix(century)
end

def cent_suffix(cent)
  return "th" if [11,12,13].include?(cent % 100)
  last_digit = cent % 10

  case last_digit
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end

p century(2001)
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

3.

# def div_4?(year)
#   year % 4 == 0
# end

# def div_100?(year)
#   year % 100 == 0
# end

# def div_400?(year)
#   year % 400 == 0
# end


# def leap_year?(year)
#   if !div_4?(year)
#     false
#   elsif div_4?(year) && !div_100?(year)
#     true
#   elsif div_4?(year) && div_100?(year) && div_400?(year)
#     true
#   elsif div_4?(year) && div_100?(year) && !div_400?(year)
#     false
#   end
# end

#or:

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

#orrrr:

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2100) == false
p leap_year?(2015) == false
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

4.

def leap_year?(year)
  if year >= 1752
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  else
  (year % 4)
end

5.
def multisum1(num)
  multiples = []
  (1..num).each do |number|
    multiples << number if number % 3 == 0 || number % 5 == 0
    # number += 1
  end
  multiples.sum
end

# or with #inject

def multisum(num)
  multiples = []
  (1..num).each do |number|
    multiples << number if number % 3 == 0 || number % 5 == 0
    # number += 1
  end
  multiples.inject(:+)
end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


6.
numbers = [2,5,13]

def running_total(num)
  sum = 0
  results = num.map { |number| sum += number }
end

def running_total_fancy(nums)
  nums.inject([]) { |x, y| x + [(x.last || 0) + y]}
end

def running_total_each(num)
  sum = 0
  num.each_with_object([] #or Array.new) do |num, arr| 
    sum += num
    arr << sum
  end
end

p running_total(numbers)
p running_total_fancy(numbers)
p running_total_each(numbers)

7.
charset = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 8,
  "9" => 9
}

def string_to_integer(string, chars)
  array = string.chars.map { |char| chars[char] }

  value = 0
  array.each { |digit| value = 10 * value + digit}
  value
end

p string_to_integer("1990", charset)

# Hexadecimal.

HEXADECIMAL = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 8,
  "9" => 9,
  "a" => 10,
  "b" => 11,
  "c" => 12,
  "d" => 13,
  "e" => 14,
  "f" => 15
}

def string_to_integer(string, chars)
  array = string.downcase.chars.map { |char| chars[char] }

  value = 0
  array.each { |digit| value = 16 * value + digit}
  value
end

p string_to_integer("4D9f", HEXADECIMAL)

8. (come back for further exploration)

CHARSET = { #delcaring as a CONST to not need to pass into the method string_to_interger
  "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
  "5" => 5, "6" => 6, "7" => 8, "9" => 9
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

9.
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


10.

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

=end

