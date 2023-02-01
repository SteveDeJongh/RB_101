# Assignment: Twenty-One

=begin

PEDAC

D)

Card deck will be a nested array containing cards suit and cards value. [['H', '2'], ['S', 'J'], ['D', 'A']]
Player and dealer hands will be arrays.

A)
1. Initialize deck #done with #initialize_deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.

=end

require "pry"

def prompt(message)
  puts "==> #{message}"
end

CARD_SUITS = ['H', 'D', 'C', 'S']
CARD_VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
DEALER_MAX = 17
GAME_GOAL = 21

def initialize_deck
  deck = []
  CARD_SUITS.each do |suit|
    CARD_VALUES.each do |val|
      deck << [suit, val]
    end
  end
  deck.shuffle # Adding #shuffle to avoid the need to use sample in dealer_card.
end

# Alternate intialize_deck syntax.
# def initialize_deck
#   CARD_SUITS.product(CARD_VALUES).shuffle
# end

# def initialize_deck(suits, values)
#   suits.map do |suit|
#     values.each do |val|
#       deck << [suit, val]
#     end
#   end
# end

def deal_card(deck)
  deck.pop # pop with a shuffled deck instead of #delete(deck.sample)
end

def display_cards(player, dealer)
  player_display = []
  dealer_display = ['Hidden']
  player.each do |card|
    player_display << card[1]
  end
  dealer.each do |card|
    dealer_display << card[1] unless dealer[0] == card
  end
  prompt "Player cards: #{player_display.join(',')}."
  prompt "Dealer cards: #{dealer_display.join(',')}."
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_GOAL
  end

  sum
end

def busted?(totals)
  totals > GAME_GOAL
end

def determine_winner(player, dealer) # Could assing total(player/dealer) to a local variable and use for camparison.
  if busted?(player)
    :player_busted
  elsif busted?(dealer)
    :dealer_busted
  elsif player > dealer
    :player
  elsif dealer > player
    :dealer
  else
    :tie
  end
end

def display_results(dealercards, dealertotal, playercards, playertotal)
  puts "============"
  prompt "Dealer has #{dealercards} for a total of #{dealertotal}"
  prompt "Player has #{playercards} for a total of #{playertotal}"
  puts "============"
end

def winner_message(winner)
  case winner
  when :player_busted then prompt "You busted! Dealer wins!"
  when :dealer_busted then prompt "Dealer busted! You win!"
  when :player        then prompt "Player wins!"
  when :dealer        then prompt "Dealer wins!"
  when :tie           then prompt "It's a draw!"
  end
end

def score_message(player, dealer)
  prompt "The score is Player #{player} vs Dealer #{dealer}."
end

def play_again?
  prompt "Would you like to play again? (Y/N)"
  answer = gets.chomp
  answer.downcase.start_with?("y")
end

loop do # Main game loop.
  player_score = 0
  dealer_score = 0

  loop do # First to 2 loop.
    prompt "Welcome to Twenty-One!"
    card_deck = initialize_deck
    player_cards = [deal_card(card_deck), deal_card(card_deck)]
    dealer_cards = [deal_card(card_deck), deal_card(card_deck)]
    player_total = total(player_cards)
    dealer_total = total(dealer_cards)

    display_cards(player_cards, dealer_cards)

    loop do # Player turn refactored
      answer = nil
      loop do
        prompt "Would you like to (h)it or (s)tay?"
        answer = gets.chomp.downcase
        break if ['h', 's'].include?(answer)
        prompt "Sorry, must enter either 'h' or 's'."
      end

      if answer == 'h'
        player_cards << deal_card(card_deck)
        prompt "You chose to hit!"
        display_cards(player_cards, dealer_cards)
        player_total = total(player_cards)
        prompt "Your total is now: #{player_total}."
      end

      break if answer == "s" || busted?(player_total)
    end

    if busted?(player_total)
      display_results(dealer_cards, dealer_total, player_cards, player_total)
      winner_message(determine_winner(player_total, dealer_total))
      dealer_score += 1
      score_message(player_score, dealer_score)
      player_score == 2 || dealer_score == 2 ? break : next
    else
      prompt "You stayed at #{player_total}"
    end

    prompt "Dealer turn..."

    loop do # Dealer turn
      break if dealer_total >= DEALER_MAX

      prompt "Dealer hit!"
      dealer_cards << deal_card(card_deck)
      prompt display_cards(player_cards, dealer_cards)
      dealer_total = total(dealer_cards)
    end

    if busted?(dealer_total)
      prompt "Dealer total is now: #{dealer_total}"
      display_results(dealer_cards, dealer_total, player_cards, player_total)
      winner_message(determine_winner(player_total, dealer_total))
      player_score += 1
      score_message(player_score, dealer_score)
      player_score == 2 || dealer_score == 2 ? break : next
    else
      prompt "Dealer stays at #{dealer_total}."
    end

    # Both players stay, compare cards.

    display_results(dealer_cards, dealer_total, player_cards, player_total)
    winner_message(determine_winner(player_total, dealer_total))
    if player_total > dealer_total
      player_score += 1
    elsif dealer_total > player_total
      dealer_score += 1
    end
    score_message(player_score, dealer_score)

    break if player_score == 2 || dealer_score == 2
  end # End of first to 2 loop.

  break unless play_again?
end # End of game.

prompt "Thank you for playing Twenty-One! Good bye!"

=begin # LaunchSchool solution.

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > 21
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  prompt "Welcome to Twenty-One!"

  # initialize vars
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  # initial deal
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards[0]} and #{player_cards[1]}, for a total of #{total(player_cards)}."

  # player turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if total(dealer_cards) >= 17

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  # both player and dealer stays - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=============="

  display_result(dealer_cards, player_cards)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"

=end
