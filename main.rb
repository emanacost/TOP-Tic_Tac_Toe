# frozen_string_literal: true

require_relative 'lib/tic_tac_toe_board'
require_relative 'lib/tic_tac_toe_loop'

# Main loop for the game
def game_loop
  # Initialize the array that will store the current state of a row.
  row1 = [2, 2, 2]
  row2 = [2, 2, 2]
  row3 = [2, 2, 2]
  puts 'Welcome to Tic Tac Toe!'
  puts 'Press any key to start the game.'
  gets.chomp
  playing = true
  while playing = true
    GameLoop.new(row1, row2, row3).print_board
    GameLoop.player_move
    GameLoop.update_board
    row1 = GameLoop.row1
    row2 = GameLoop.row2
    row3 = GameLoop.row3
    GameLoop.print_board
    # Check for a win or draw here.
    #
  end
  binding.pry
end

game_loop
