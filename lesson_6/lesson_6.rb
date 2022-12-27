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



=end

