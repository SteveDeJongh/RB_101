# RB101-RB109 Small problems; Easy 6

=begin
1. Revisit Further exploration.

DEGREE = "\xC2\xB0"

def dms(deg)
  degrees = deg.to_i
  minutes = ((deg % 1) * 60).to_i
  seconds = ((((deg % 1) * 60) % 1) * 60).to_i

  p format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(76.73)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = 3600

# def dms(degree_float)
#   total_seconds = (degree_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# p dms(30)

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

2.

VOWELS = %(A E I O U a e i o u)

def remove_vowels(string_array)
  string_array.map! do |string|
    index = 0
    output = ''
    while index < string.length
      output << string[index] unless VOWELS.include?(string[index])
      index +=1
    end
    output
  end
end

#or

def remove_vowels2(strings)
  strings.map { |string| string.delete('aeiouAEIOU')}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

3.

def find_fibonacci_index_by_length(num)
  fib = 1
  fib_times = 2
  fib_arr = [1,1]
  loop do 
    fib_arr << (fib_arr[-1]+fib_arr[-2])
    fib_times += 1
    break if fib_arr[-1].digits.size == num
  end
  fib_times
end

p find_fibonacci_index_by_length(100)

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

4.

5.

6.

7.

8.

9.

10.

=end



def find_fibonacci_index_by_length(num)
  fib = 1
  fib_times = 2
  fib_arr = [1,1]
  loop do 
    fib_arr << (fib_arr[-1]+fib_arr[-2])
    fib_times += 1
    break if fib_arr[-1].digits.size == num
  end
  fib_times
end

p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847