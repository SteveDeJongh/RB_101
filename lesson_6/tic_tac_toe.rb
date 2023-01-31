####################### Walk-Through: Tic Tac Toe ###########################

# 1. Display the nitial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the update board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, got to #2.
# 8. Play again?
# 9. If yes, got to #1
# 10. Good bye!

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear' # clears terminal screen everytime new board is displayed.
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    # mutates last elelement in the array, preparing for #join.
    arr.join(delimiter)
  end
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line| # Offence first with COMPUTER_MARKER as marker
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  if !square # Defence after checking no chances to win.
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  if !square
    square = 5 unless brd[5] != " "
  end
  if !square # If no off move, deff move or Square 5, pick a random square.
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return "Player"
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return "Computer"
    # end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      # "*line" = line[0], line[1], line[2]
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def place_piece!(board, current_player)
  if current_player == "computer"
    computer_places_piece!(board)
  else
    player_places_piece!(board)
  end
end

def alternate_player(curr_play)
  curr_play == "computer" ? "player" : "computer"
end

loop do # main game loop
  player_score = 0
  computer_score = 0
  prompt "Who should go first? (1 for Player, 2 for Computer)"
  starting_player = gets.chomp
  if starting_player == "1"
    current_player = "player"
  else
    current_player = "computer"
  end

  loop do # game loop for each round
    board = initialize_board
    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      if detect_winner(board) == "Player"
        player_score += 1
      else
        computer_score += 1
      end
    else
      prompt "It's a tie!"
    end
    prompt "Player #{player_score} Computer #{computer_score}"
    break if computer_score == 2 || player_score == 2
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good Bye!"
