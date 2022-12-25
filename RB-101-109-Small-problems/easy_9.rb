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
  -num.abs #this prepends the numbers abolsulte value stripping it of it's sign, addingnegative symbol to all values.
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

=end

