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
  playing_game = true
  while playing_game
    b = 1
    while b < 4
      print_row(eval("row#{b}"))
      b += 1
    end
  end
end

game_loop

# Alternative class-based approach to organize the game loop
class GameLoop
  def initialize(row1, row2, row3)
    @row1 = row1
    @row2 = row2
    @row3 = row3
  end

  def print_board
    b = 0
    while b < 3
      print_row do
        print_row(@row1)
        print_row(@row2)
        print_row(@row3)
      end
      b += 1
    end
  end
end
