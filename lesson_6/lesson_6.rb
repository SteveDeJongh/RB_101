# Lesson 6: Slightly Larger Programs

=begin
######################################## Introduction ########################################
Working on larger programs.
1) Break down the problem into smaller pieces.
2) Map out the flow of the program
3) Write out psuedo code for that sub-process only.
4) Play around with the code.
5) Do the assignments in sequence.
6) Watch the walk-through videos.

######################################## Updated Rubocop configuration ########################################

Added .rubocop.yml file to lesson_6 dir.

######################################## Debugging with Pry ########################################

Notes in Notion

######################################## Tic Tac Toe Problem Decomposition ########################################

Game description:

Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and
marks a square on the board. First player to reach 3 squares in a row, including diagonals,
wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.

Sequence:

1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!

######################################## Walk-Through: Tic Tac Toe ########################################

ti_tac_toe.rb

######################################## Assignment: TTT Bonues Features ########################################

1) Joinor method.

def joinor(arr, connector = ", ", last = "or")
  results = ""
  if arr.length == 1
    results << arr[0].to_s
  elsif arr.length == 2
    results << "#{arr[0]} #{last} #{arr[1]}"
  else
    arr.each do |num|
      if num == arr.last
        results << "#{last} #{num}"
      else
        results << "#{num}#{connector}"
      end
    end
  end
  results
end

# or with a case statement

def joinor1(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first.to_s
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}" #mutates last element in the array, prepaying for #join.
    arr.join(delimiter)
  end
end

p joinor([1])
p joinor1([1, 2])                   # => "1 or 2"
p joinor1([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

2) keep score

3) Computer AI: Defense

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

4) Computer AI: Offense

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

5)

a) Swapped sequence in computer_places_piece to make offensive move first.
b) Added pick square 5 unless it's already taken.
c) Added prompt at loop start to decide who makes first move.

loop do
  player_score = 0
  computer_score = 0
  prompt "Who should go first? (1 for Player, 2 for Computer)"
  first = gets.chomp
  loop do
    board = initialize_board
    if first == "1"
      loop do
        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    elsif first == "2"
      loop do
        computer_places_piece!(board)
        break if someone_won?(board) || board_full?(board)

        display_board(board)

        player_places_piece!(board)
        break if someone_won?(board) || board_full?(board)
      end
    else
      "invalid input"
    end

d) Can be done by sampling choices.

6)

def place_piece!(board, current_player)
  if current_player == "computer"
    computer_places_piece!(board)
  else
    player_places_piece!(board)
  end
end

def alternate_player(curr_play)
  curr_play == "computer" ? curr_play = "player" : curr_play = "computer"
end

Future exploraton:
Minimax algorithm

You can build an unbeatable Tic Tac Toe by utilizing the minimax algorithm.

Bigger board

What happens if the board is 5x5 instead of 3x3? What about a 9x9 board?

More players

When you have a bigger board, you can perhaps add more than 2 players. Would it be interesting to play against 2 computers? What about 2 human players against a computer?

######################################## Assignment: Twenty-One ########################################

21.rb

######################################## Assignment: Twenty-One ########################################


=end

