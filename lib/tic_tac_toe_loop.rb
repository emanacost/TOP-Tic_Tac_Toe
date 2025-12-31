# frozen_string_literal: true

require_relative './tic_tac_toe_board'
require 'pry-byebug'

# Main loop for the game
def game_loop
  # Initialize the array that will store the current state of a row.
  row1 = [2, 2, 2]
  row2 = [2, 2, 2]
  row3 = [2, 2, 2]
  puts 'Welcome to Tic Tac Toe!'
  puts 'Press any key to start the game.'
  gets.chomp
  b = 1
  while b < 4
    print_row(eval("row#{b}"))
    b += 1
  end
end

game_loop
