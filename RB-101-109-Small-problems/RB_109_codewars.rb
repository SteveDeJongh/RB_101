# Retired codewar problems for RB 109 prep.

=begin

1) Counter Letters in string(retired)
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

def letter_count(str)
  characters = str.chars
  characters.map! { |char| char.to_sym }
  results = Hash.new(0)
  characters.each do |char|
    results[char] += 1
    end
  results
end

=end
