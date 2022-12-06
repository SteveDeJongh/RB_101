# Practice Problems: Easy 2

=begin
1.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.has_key?("Spot") # or just #.key?()
p ages.include?("Spot")
p ages.member?("Spot")

2.

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase
puts munsters_description.swapcase == "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.capitalize
puts munsters_description.capitalize == "The munsters are creepy in a good way."
puts munsters_description.downcase
puts munsters_description.downcase == "the munsters are creepy in a good way."
puts munsters_description.upcase
puts munsters_description.upcase == "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

3.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

4.
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino")
#or
p advice.match?("Dino")

5.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

6.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

7.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push"Dino", "Hoppy"

8.
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(..38)

#or

p advice.slice!(0, advice.index("house"))

9.

statement = "The Flintstones Rock!"

p statement.count("t")

10.
title = "Flintstone Family Members"

title.center(40)


=end
