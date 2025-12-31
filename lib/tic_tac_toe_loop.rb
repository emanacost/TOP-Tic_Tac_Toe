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
  GameLoop.new(row1, row2, row3).print_board
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
      print_row(@row1)
      print_row(@row2)
      print_row(@row3)
      b += 1
    end
  end

  def self.player_move
    # Logic to handle player moves and update the board state.
    puts 'Please enter a move. Format: row, column'
    move = gets.chomp.split(',').map(&:to_i)
    # Input handling and validation logic here.
    if move.length == 2 || move[0].between?(0, 2) && move[1].between?(0, 2)
      puts "Nice! You choose row: #{move[0]} on column: #{move[1]}"
    else
      puts 'Invalid input. Please try again.'
    end
  end
end
