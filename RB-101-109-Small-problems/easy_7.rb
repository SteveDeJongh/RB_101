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

4.

5.

6.

7.

8.

9.

10.

=end

def word_cap1(string)
  res_string = string.split.map do |word|
    word.capitalize
  end
  res_string.join(" ")
end

#or

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'