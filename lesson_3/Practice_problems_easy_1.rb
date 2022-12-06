# Practice PRoblems: Easy 1
=begin

1. 1
2
2
3

#.uniq is non mutating, #.uniq! is. #puts writes each element of an array as a string on a new line.

p numbers would have returned [1,2,2,3] as it calls inspect on it's argument.

2.
"!=" = does not equal
"!" as in "!user_name" = (not)user_name. Turns object ot the opposite of their boolean equivalent.
"!" as in "words.uniq!" = part of method name, ruby writing convention (not rule) that indicats the method is mutating.
"?" before something = ternary operator for if...else
"?" after something = part of method name, ruby writing convention that the method returns a boolean.
"!!" as in "!!user_name" = turns object into their boolean equivalent.

3.

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

4.
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)

delete_at will return 2, and the array will now be [1,3,4,5] # deletes obj at index.
delete will return 1 and array is now [2,3,4,5] # deletes all instsances of said obj in the array.

5.
def between_10_and_100?(num)
  if num > 10 && num < 100
    return true
  end
end

p between_10_and_100?(42)

#using Range method #.cover(obj)

p (10..100).cover?(42)

6.
famous_words = "seven years ago..."

famous_words.insert(0, "Four score and ")
#or
famous_words.prepend("Four score and ")
#or
"Four score and " + famous_words
#or
"Four score and " << famous_words

7.
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flintstones.flatten!

p flintstones

8.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney")

=end

