# RB101-RB109 - Small Problems - Easy 7

=begin
1.

def interleave(a1, a2)
  results = []
  counter = 0
  loop do
    results << a1[counter] if a1[counter] != nil
    results << a2[counter] if a2[counter] != nil
    counter += 1
    break if counter >= (a1.size) + (a2.size)
  end
  results
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#or using each with index. Does not account for one array beign longer than the other.

def interleave1(a1,a2)
  result = []
  a1.each_with_index do |ele, index|
    result << ele << a2[index]
  end
  result
end

p interleave1([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#Further exploration using Zip

def interleave2(a1,a2)
  a1.zip(a2).flatten
end

p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

2.


UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(string)
  array = string.split('')
  results = { lowercase: 0, uppercase: 0, neither: 0 }
  array.each do |x|
    if LOWERCASE.include?(x)
      results[:lowercase] += 1
    elsif UPPERCASE.include?(x)
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end
  results
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Using String#chars instead of converting to array.

def letter_case_count_chars(string)
  results = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |x|
    if LOWERCASE.include?(x)
      results[:lowercase] += 1
    elsif UPPERCASE.include?(x)
      results[:uppercase] += 1
    else
      results[:neither] += 1
    end
  end
  results
end

p letter_case_count_chars('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count_chars('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count_chars('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count_chars('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Using #count and some REGEX.

def letter_case_count_count(string)
  count = {}
  characters = string.chars
  count[:lowercase] = characters.count { |char| LOWERCASE.include?(char)}
  count[:uppercase] = characters.count { |char| UPPERCASE.include?(char)}
  count[:neither] = characters.count { |char| char =~ /[^A-Za-z]/} # uses String#=~ method
  count
end

p letter_case_count_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

3.

def word_cap1(string)
  res_string = string.split.map do |word|
    word.capitalize
  end
  res_string.join(" ")
end

#or

def word_cap2(string)
  string.split.map(&:capitalize).join(' ')
end

# Further exploration, capitalizing first letter with #capitalize.

def word_cap_no_capitalize_func(string)
  res_string = string.split.map! do |word|
    word[0] = word[0].upcase!
    word
  end
  res_string.join(" ")
end

p word_cap_no_capitalize_func('four score and seven') == 'Four Score And Seven'
p word_cap_no_capitalize_func('the javaScript language') == 'The Javascript Language'
p word_cap_no_capitalize_func('this is a "quoted" word') == 'This Is A "quoted" Word'

4.

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  chars = string.split('').map do |x|
    if UPPERCASE.include?(x)
      x.downcase
    elsif LOWERCASE.include?(x)
      x.upcase
    else
      x
    end
  end
  chars.join('')
end

#using string#chars instead of split, and REGEX.

def swapcase(string)
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  characters.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

5.

# def staggered_case(str)
#   counter = 0
#   result = str.chars.map do |x|
#     counter += 1
#     if counter.odd?
#       x.upcase
#     else
#       x.downcase    
#     end
#   end
#   result.join
# end


# Further exploration, choosing to start uppercase or downcase.
def staggered_case_choice(string:, start:)
  counter = start == 'first' ? 0 : 1
  result = string.chars.map do |x|
    counter += 1
    if counter.odd?
      x.upcase
    else
      x.downcase    
    end
  end
  result.join
end


p staggered_case(string: 'I Love Launch School!', start: 'second') #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

6.

def staggered_case(str)
  counter = 0
  results = str.split('').map do |x|
    if x =~ /[^A-Za-z]/ #checks if car is NOT a letter.
      x
    elsif counter.even?
      counter += 1
      x.upcase
    else
      counter += 1
      x.downcase
    end
  end
  results.join
end

#or , using a switch on the truthyness of neep_upper and nest if statements.

def staggered_case1(str)
  result = ''
  need_upper = true
  str.chars.map do |x|
    if x =~ /[A-Za-z]/ #checks if car is a letter.
      if need_upper
        result += x.upcase
      else
        result += x.downcase
      end
      need_upper = !need_upper
    else
      result += x
    end
  end
  result
end

p staggered_case1('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case1('ALL CAPS') == 'AlL cApS'
p staggered_case1('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Further exploration

def staggered_case2(str:,first:)
  result = ''
  need_upper = true
  str.chars.map do |x|
    if x =~ /[A-Za-z]/ #checks if car is a letter. REGEX could be /[a-z]/i (i flag ignores case)
      if need_upper
        result += x.upcase
      else
        result += x.downcase
      end
      need_upper = !need_upper
    else
      if first == 'true'
        need_upper = !need_upper
      end
      result += x
    end
  end
  result
end

p staggered_case2(str: 'I Love Launch School!', first: 'true' ) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2(str: 'I Love Launch School!', first: 'false') == 'I lOvE lAuNcH sChOoL!'


7.

# multiply all numbers of an array together
# divide result by number of entries in the array
# return result to 3 decimal places

def show_multiplicative_average(arr)
  multi_result = arr.inject(:*)
  average = multi_result / arr.length.to_f #to_f to ensure result is a float for trailing decimal.
  puts "The result is #{sprintf("%.3f", average)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#or

def show_multiplicative_average1(arr)
  product = 1.to_f
  arr.each do |num|
    product *= num
  end
  average = product / arr.size
  puts "The average is #{sprintf("%.3f", average)}"
end

p show_multiplicative_average1([3, 5])                # => The result is 7.500
p show_multiplicative_average1([6])                   # => The result is 6.000
p show_multiplicative_average1([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

8.

def multiply_list(ar1, ar2)
  results = []
  count = 0
  ar1.each do |x|
    results << x * ar2[count]
    count += 1
  end
  results
end

def multiply_list1(ar1, ar2) #using each_with_index
  results = []
  ar1.each_with_index do |x, i|
    results << x * ar2[i]
  end
  results
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further exploration

def multiply_list2(ar1, ar2)
   ar1.zip(ar2).map {|nums| nums.reduce(:*)} #combines arays [[3,9],...] map loops and products each sub array
end
  
p multiply_list2([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]


9.

def multiply_all_pairs(ar1, ar2)
  results = []
  ar1.each do |x|
    ar2.each do |y|
      results << x * y
    end
  end
  results.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs1(ar1,ar2)
  ar1.product(ar2).map { |num1, num2| num1*num2}.sort
end

p multiply_all_pairs1([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

10.

def penultimate(string)
  string.split()[-2]
end


# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# Further exploration

def middle(string)
  split_string = string.split
  if split_string.empty?
    puts "Error, empty string!"
  elsif split_string.length % 2 == 0 # or .even?
    puts "Error, even number of words."
  else
    split_string[(split_string.length / 2)]
  end
end

p middle('') == nil
p middle('middle last word') == 'last'
p middle('Launch School is great!') == nil
p middle('middle last wonderful true word') == 'wonderful'

=end