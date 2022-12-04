# Rock Paper Scissors Walk Through Bonus Features

VALID_CHOICES = %w(rock paper scissors lizard spock)
# or ["rock", "paper", "scissors"]

HASH_CHOICES = {
  r: "rock",
  p: 'paper',
  s: "scissors",
  l: 'lizard',
  sp: 'spock'
}

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
    (first == 'rock' && second == 'scissors') ||
      (first == 'scissors' && second == "paper") ||
      (first == "paper" && second == 'rock') ||
      (first == 'rock' && second == 'lizard') ||
      (first == 'lizard' && second == 'spock') ||
      (first == 'spock' && second == 'scissors') ||
      (first == 'scissors' && second == 'lizard') ||
      (first == 'lizard' && second == 'paper') ||
      (first == 'paper' && second == 'spock') ||
      (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def score(player, computer)
  win?(player, computer) ? 1 : 0
end

loop do # main loop
  choice = ''
  play_score = 0
  c_score = 0
  loop do # score loop
    loop do
      prompt("Choose one: r(rock), p(paper), s(scissors), l(lizard), sp(spock).")
      short_choice = gets.chomp
      choice = HASH_CHOICES[short_choice.to_sym]
      # Changed to hash lookup instead of case statement to convert input.
      # case short_choice
      #         when "r"
      #           "rock"
      #         when "p"
      #           "paper"
      #         when "s"
      #           "scissors"
      #         when "l"
      #           "lizard"
      #         when "sp"
      #           "spock"
      #         end

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    display_results(choice, computer_choice)

    play_score += score(choice, computer_choice)
    c_score += score(computer_choice, choice)

    prompt("Player #{play_score} vs computer #{c_score}")

    prompt("You chose #{choice}, comuputer chose #{computer_choice}.")

    break if play_score >= 3 || c_score >= 3
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")
