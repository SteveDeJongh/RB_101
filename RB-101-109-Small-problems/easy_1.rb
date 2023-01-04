=begin
1) Repeat Yourself

def repeat(string, number)
  number.times do
    puts string
  end
end

repeat("Hello world!", 5)

2) Odd

def is_odd?(num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Further Exploration, use remainder instead of modulo.

def is_odd1?(num)
  num.remainder(2) != 0
end

puts is_odd1?(2)    # => false
puts is_odd1?(5)    # => true
puts is_odd1?(-17)  # => true
puts is_odd1?(-8)   # => false
puts is_odd1?(0)    # => false
puts is_odd1?(7)    # => true

3) Stringy Strings

def stringy(num)
  string = ''
  num.times do |index|
    index.even? ? string << '1' : string << '0'
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further Exploration, addition argument for starting value.

def stringy_start(num, start = "0")
  string = ''
  num.times do |index|
    if start == "1"
    index.even? ? string << '1' : string << '0'
    else
    index.odd? ? string << '1' : string << '0'
    end
  end
  string
end

puts stringy_start(6, "1") == '101010'
puts stringy_start(9, "0") == '010101010'
puts stringy_start(4) == '0101'
puts stringy_start(7, "1") == '1010101'

4) What's my Bonus?

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

5) Bannerizer

def print_in_box(message)
  width = message.length
  puts "+#{'-'*(width+2)}+"
  puts "|#{' '*(width+2)}|"
  puts "| #{message} |"
  puts "|#{' '*(width+2)}|"
  puts "+#{'-'*(width+2)}+"
end

# Or with preset lines for top and bottom.

def print_in_box(message)
  horizontal_rule = "+#{'-'*(message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Further Exploration, truncate to 80 characters.

def print_in_box_trunc(message)
  if message.size > 76
    message.slice!(77..-1)
  end
  horizontal_rule = "+#{'-'*(message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end


print_in_box_trunc('To boldly go where no one has gone before. Or will it? Because i am a loooooong string!')
print_in_box_trunc('To boldly go where no one has gone before.')
print_in_box_trunc('')

# Further Exploration, word wrap messages longer than 80 characters.

def print_in_box_wrap(message)
  message_sections = []

  until message.size == 0
    message_sections << message.slice!(0..76)
  end
  
  message_size = 0
  if message_sections.empty?
    message_size = 0
  else
    message_size = message_sections.sort[0].size
  end

  horizontal_rule = "+#{'-'*(message_size + 2)}+"
  empty_line = "|#{' ' * (message_size + 2)}|"

  puts horizontal_rule
  puts empty_line
  if message_sections.size >= 2
    message_sections.each do |x|
      puts "| #{x} |" unless x == message_sections.last
    end
    puts "| #{message_sections.last}#{' ' * (78 - message_sections.last.size)}|"
  else
    puts "| #{message_sections[0]} |"
  end
  puts empty_line
  puts horizontal_rule
end

print_in_box_wrap('To boldly go where no one has gone before. Or will it? Because i am a loooooong string! Heck im even longer than i thought i was, maybe the longest, who knows')
print_in_box_wrap('To boldly go where no one has gone before.')
print_in_box_wrap('')

6) Right Triangles

def triangle(num)
  1.upto(num) do |count|
    puts "#{' ' * (num-count)}#{'*'*(count)}"
  end
end

# or 

def triangle1(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle1(5)
triangle1(10)

# Further Exploraton, modify solution to display right angle to any corner of the grid.

def triangle_with_direction(num, dir)
  case dir
  when "NE"
    spaces = num - 1
    stars = 1

    num.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 1
    end
  when "SE"
    spaces = 0
    stars = num

    num.times do |n|
      puts (' ' * spaces) + ('*' * stars)
      spaces += 1
      stars -= 1
    end
  when "NW"
    stars = 1

    num.times do |n|
      puts ('*' * stars)
      stars += 1
    end
  when "SW"
    stars = num

    num.times do |n|
      puts ('*' * stars)
      stars -= 1
    end
  end
end

triangle_with_direction(5,"NE")
triangle_with_direction(5,"SE")
triangle_with_direction(5,"NW")
triangle_with_direction(5,"SW")

7) Madlibs

def prompt(message)
  puts "==> #{message}"
end

def madlibs
  prompt "Enter a noun:"
  noun = gets.chomp
  prompt "Enter a verb:"
  verb = gets.chomp
  prompt "Enter an adjective:"
  adjective = gets.chomp
  prompt "Enter an adverb:"
  adverb = gets.chomp
  
  sentences = []
  sentences << "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentences << "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  sentences << "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

  puts sentences.sample
end

madlibs

8) Reverse the Digits in a Number

def reversed_number(num)
  num.digits.join.to_i
end

# Or

def reversed_number(num)
  string = num.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

9) Get Middle Character

def center_of(string)
  length = string.size
  middle = 0
  chars = 0
  if length.odd?
    chars = 1
    middle = length / 2
  else
    chars = 2
    middle = (length / 2) - 1
  end

  string.slice(middle, chars)
end

# Or

def center_of(string)
  center_of_string = string.size / 2
  if string.size.odd?
    string[center_of_string]
  else
    string[center_of_string - 1, 2]
  end
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

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