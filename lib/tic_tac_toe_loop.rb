# frozen_string_literal: true

require_relative './tic_tac_toe_board'
require 'pry-byebug'

# Alternative class-based approach to organize the game loop
class GameLoop
  attr_reader :move

  def initialize(row1, row2, row3)
    @row1 = row1
    @row2 = row2
    @row3 = row3
  end

  def move_tracker(move)
    @move = move
  end

  def print_board
    print_row(@row1)
    print_row(@row2)
    print_row(@row3)
  end

  def self.player_move
    # Logic to handle player moves and update the board state.
    puts 'Please enter a move. Format: row, column. 1-3 for both row and column.'
    @move = gets.chomp.split(',').map(&:to_i)
    # Input handling and validation logic here.
    if @move.length == 2 && @move[0].between?(1, 3) && @move[1].between?(1, 3)
      puts "Nice! You choose row: #{@move[0]} on column: #{@move[1]}"
    else
      puts 'Invalid input. Please try again.'
    end
  end

  def self.update_board
    # Logic to update the board based on player moves
    case @move
    when [1, 1]
      @row1[0] = 0
    when [1, 2]
      @row1[1] = 0
    when [1, 3]
      @row1[2] = 0
    when [2, 1]
      @row2[0] = 0
    when [2, 2]
      @row2[1] = 0
    when [2, 3]
      @row2[2] = 0
    when [3, 1]
      @row3[0] = 0
    when [3, 2]
      @row3[1] = 0
    when [3, 3]
      @row3[2] = 0
    end
  end
end
