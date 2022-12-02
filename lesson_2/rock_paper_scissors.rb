# Rock Paper Scissors Walk Through

VALID_CHOICES = %w(rock paper scissors) # or ["rock", "paper", "scissors"]

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'scissors' && second == "paper") ||
    (first == 'rock' && second == 'scissors') ||
    (first == "paper" && second == 'rock')
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

# def display_results(player, computer)
#   if (player == 'rock' && computer == 'scissors') ||
#      (player == "paper" && computer == 'rock') ||
#      (player == 'scissors' && computer == "paper")
#     prompt("You won!")
#   elsif (player == 'rock' && computer == "paper") ||
#         (player == 'paper' && computer == "scissors") ||
#         (player == 'scissors' && computer == "rock")
#     prompt("Computer won!")
#   else
#     prompt("It's a tie!")
#   end
# end

loop do # main loop
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  puts("You chose #{choice}, comuputer chose #{computer_choice}.")

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")
