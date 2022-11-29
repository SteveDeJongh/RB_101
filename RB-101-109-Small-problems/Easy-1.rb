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

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


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