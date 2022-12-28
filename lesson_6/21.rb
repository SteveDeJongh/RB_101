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

CARD_SUITS = ['H', 'D', 'C', 'S']
CARD_VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck(suits, values)
  deck = []
  suits.each do |suit|
    values.each do |val|
      deck << [suit, val]
    end
  end
  deck
end

def deal_card(deck)
  deck.delete(deck.sample)
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
  puts "Player cards: #{player_display.join(',')}."
  puts "Dealer cards: #{dealer_display.join(',')}."
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

def determine_winner(player, dealer)
  if busted?(player)
    puts "Player is bust, dealers #{total(dealer)} wins!"
  elsif busted?(dealer)
    puts "Dealer is bust, players #{total(player)} wins!"
  elsif total(player) > total(dealer)
    puts "Player's #{total(player)} beats dealer's #{total(dealer)}."
  elsif total(dealer) > total(player)
    puts "Dealer's #{total(dealer)} beats player's #{total(player)}."
  else
    puts "It's a draw!"
  end
end


loop do # main game loop.
  card_deck = initialize_deck(CARD_SUITS, CARD_VALUES)
  player_cards = [deal_card(card_deck), deal_card(card_deck)]
  dealer_cards = [deal_card(card_deck), deal_card(card_deck)]

  loop do # player turn
    answer = nil
    loop do # player hit or stay
      display_cards(player_cards, dealer_cards)
      puts "hit or stay?"
      answer = gets.chomp
      player_cards << deal_card(card_deck) if answer == "hit"
      break if answer == 'stay' || busted?(player_cards)
    end

    if busted?(player_cards)
      puts "You're cards are over 21!"
    else
      puts "You chose to stay."
    end
    break
  end # End of player turn

  loop do # dealer turn
    loop do # dealer hit or stay
      break if total(dealer_cards) >= 17 || busted?(dealer_cards)
      dealer_cards << deal_card(card_deck)
    end

    if busted?(dealer_cards)
      puts "Dealer is bust."
    else
      puts "Dealer chose to stay."
      break
    end
  end # End of Dealer turn.
  determine_winner(player_cards, dealer_cards)
  break
end

